<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.0" styleCategories="AllStyleCategories">
  <renderer-v2 type="singleSymbol">
    <symbols>
      <symbol name="0" type="fill">
        <layer class="SimpleFill">
          <Option type="Map">
            <Option name="color" value="173,216,230,160" type="QString"/>
            <Option name="outline_color" value="0,0,0,255" type="QString"/>
            <Option name="outline_width" value="0.5" type="QString"/>
          </Option>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style fieldName="concat(areal_m2, ' m²')" fontSize="8" fontFamily="Arial"/>
      <placement placement="1"/>
      <rendering drawLabels="1"/>
    </settings>
  </labeling>
</qgis>