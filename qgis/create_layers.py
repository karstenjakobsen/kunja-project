import shapefile
import math

CRS = 'PROJCS["ETRS89 / UTM zone 32N",GEOGCS["ETRS89",DATUM["European_Terrestrial_Reference_System_1989",SPHEROID["GRS 1980",6378137,298.257222101]],PRIMEM["Greenwich",0],UNIT["degree",0.0174532925199433]],PROJECTION["Transverse_Mercator"],PARAMETER["latitude_of_origin",0],PARAMETER["central_meridian",9],PARAMETER["scale_factor",0.9996],PARAMETER["false_easting",500000],PARAMETER["false_northing",0],UNIT["metre",1]]'

# Center of project area
CX, CY = 598350.0, 6107940.0

def rect(cx, cy, w, h):
    hw, hh = w / 2, h / 2
    return [[cx - hw, cy - hh], [cx + hw, cy - hh], [cx + hw, cy + hh], [cx - hw, cy + hh], [cx - hw, cy - hh]]

def write_layer(name, polygons):
    w = shapefile.Writer(name, shapefile.POLYGON)
    w.field('id', 'N')
    for i, poly in enumerate(polygons):
        w.poly([poly])
        w.record(i + 1)
    w.close()
    with open(name + '.prj', 'w') as f:
        f.write(CRS)
    print(f"Created {name}")

# 1. Jordvarme - 4000m2 square (~63.25 x 63.25m), centered slightly west
side = math.sqrt(4000)
write_layer('Jordvarme', [rect(CX - 100, CY + 50, side, side)])

# 2. Drivhus - two 3x12m rectangles, side by side with 2m gap (overwrites existing)
write_layer('Drivhus', [
    rect(CX - 8,  CY - 80, 3, 12),
    rect(CX - 3,  CY - 80, 3, 12),
])

# 3. Fællesarealer - three 200m2 squares (~14.14 x 14.14m), spaced out
s = math.sqrt(200)
write_layer('Faellesarealer', [
    rect(CX - 60, CY - 60, s, s),
    rect(CX,      CY - 60, s, s),
    rect(CX + 60, CY - 60, s, s),
])
