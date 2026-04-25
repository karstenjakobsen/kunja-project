<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.0" styleCategories="AllStyleCategories">
  <renderer-v2 type="categorizedSymbol" attr="type">
    <categories>
      <category value="tree" label="Træ" render="true"/>
      <category value="bench" label="Bænk" render="true"/>
      <category value="swing" label="Gynge" render="true"/>
    </categories>
    <symbols>
      <symbol name="0" type="marker">
        <layer class="SimpleMarker">
          <Option type="Map">
            <Option name="name" value="circle" type="QString"/>
            <Option name="size" value="4" type="QString"/>
            <Option name="color" value="34,139,34,255" type="QString"/>
            <Option name="outline_color" value="0,100,0,255" type="QString"/>
          </Option>
        </layer>
      </symbol>
      <symbol name="1" type="marker">
        <layer class="SimpleMarker">
          <Option type="Map">
            <Option name="name" value="square" type="QString"/>
            <Option name="size" value="4" type="QString"/>
            <Option name="color" value="139,90,43,255" type="QString"/>
            <Option name="outline_color" value="80,40,0,255" type="QString"/>
          </Option>
        </layer>
      </symbol>
      <symbol name="2" type="marker">
        <layer class="SimpleMarker">
          <Option type="Map">
            <Option name="name" value="triangle" type="QString"/>
            <Option name="size" value="4" type="QString"/>
            <Option name="color" value="255,140,0,255" type="QString"/>
            <Option name="outline_color" value="180,80,0,255" type="QString"/>
          </Option>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style fieldName="navn" fontSize="7" fontFamily="Arial"/>
      <placement placement="1"/>
      <rendering drawLabels="1"/>
    </settings>
  </labeling>
</qgis>
