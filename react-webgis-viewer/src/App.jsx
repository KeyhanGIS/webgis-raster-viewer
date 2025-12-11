import { MapContainer, TileLayer, WMSTileLayer, LayersControl } from "react-leaflet";
import L from "leaflet";

export default function App() {
  const center = [31.2676794, 48.7591692];

  return (
    <>
      <div style={{ position: "fixed", top: 0, left: 0, height: "100%", width: "100%", zIndex: 0 }}>
        <MapContainer
          center={center}
          zoom={7}
          crs={L.CRS.EPSG3857}
          style={{ height: "100%", width: "100%" }}
        >
          <LayersControl position="topright" collapsed={false}>

            {/* Base Layers */}
            <LayersControl.BaseLayer checked name="OpenStreetMap">
              <TileLayer
                url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
                attribution="© OpenStreetMap contributors"
              />
            </LayersControl.BaseLayer>

            {/* Overlay Layers */}
            <LayersControl.Overlay checked name="DEM (Khuzestan)">
              <WMSTileLayer
                url="http://localhost:8080/geoserver/webgis_raster/wms"
                layers="webgis_raster:DEM_Khuzestan"
                format="image/png"
                transparent={true}
                version="1.1.0"
              />
            </LayersControl.Overlay>

          </LayersControl>
        </MapContainer>
      </div>
    </>
  );
}
