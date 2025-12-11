<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor
    xmlns="http://www.opengis.net/sld"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:gml="http://www.opengis.net/gml"
    version="1.0.0">

  <sld:NamedLayer>
    <sld:Name>dem_-105_3741</sld:Name>
    <sld:UserStyle>
      <sld:Title>DEM Elevation Ramp (-105 to 3741 m)</sld:Title>

      <sld:FeatureTypeStyle>
        <sld:Rule>
          <RasterSymbolizer>
            <Opacity>1.0</Opacity>

            <ColorMap type="ramp">
              <ColorMapEntry color="#000080" quantity="-105" label="-105 m" opacity="1"/>
              <ColorMapEntry color="#FEE699" quantity="0" label="0 m (Start)" opacity="1"/>
              <ColorMapEntry color="#FDBB84" quantity="100" opacity="1"/>
              <ColorMapEntry color="#E34A33" quantity="500" opacity="1"/>
              <ColorMapEntry color="#A73C2C" quantity="1000" opacity="1"/>
              <ColorMapEntry color="#770000" quantity="2000" opacity="1"/>
              <ColorMapEntry color="#5A0000" quantity="3000" opacity="1"/>
              <ColorMapEntry color="#3F3F3F" quantity="3741" label="3741 m" opacity="1"/>
            </ColorMap>

          </RasterSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>

    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>
