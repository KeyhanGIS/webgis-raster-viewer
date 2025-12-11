# **WebGIS Raster Viewer**

This project demonstrates how to publish and visualize a raster DEM using **GeoServer (WMS)** and a simple **React + Leaflet** web client.
The goal is to provide a clean, minimal, and practical example of building a small WebGIS that displays raster data on top of a base map.

---

## **Dataset**

The repository includes a 90–meter DEM covering Khuzestan province.

* **File:** `DEM_Khuzestan.tif`
* **Size:** ~7 MB
* **Projection:** **EPSG:3857 (Web Mercator)**

Make sure GeoServer uses the same CRS (EPSG:3857) when creating the store and publishing the layer.

---

## **Features**

* Display DEM via WMS
* Toggle raster layer visibility
* OpenStreetMap base layer
* Clean and extendable React + Leaflet setup
* Custom raster style defined in an SLD file
* Screenshots of both GeoServer and the final map are included

---

## **Project Structure**

```
webgis-raster-viewer/
│
├── data/
│   └── DEM_Khuzestan_90m.tif
│
├── geoserver/
│   └── style.sld
│
├── screenshots/
│   ├── final_map.jpg               (final DEM + OSM output)
│   └── geoserver/
│       ├── dem_preview.jpg         (GeoServer preview of the DEM)
│       ├── layer_settings.png      (layer configuration in GeoServer)
│       └── sld_style_preview.jpg   (preview of the SLD style)
│
├── react-webgis-viewer/
│   ├── src/
│   ├── package.json
│   └── ...
│
└── architecture_analysis.md
```

---

## **Running the React App**

1. Go to the React project folder:

```
cd react-webgis-viewer
```

2. Install dependencies:

```
npm install
```

3. Start the development server:

```
npm run dev
```

Default app URL:

```
http://localhost:5173
```

---

## **GeoServer Setup**

To publish the DEM and expose it as WMS:

1. Create a workspace named **webgis_raster**
2. Add the DEM as a Coverage Store
3. Confirm that the CRS is **EPSG:3857**
4. Publish the layer using the name:

   ```
   DEM_Khuzestan
   ```
5. Apply the included SLD (`style.sld`) to use the same symbology

Your WMS endpoint will look like:

```
http://localhost:8080/geoserver/webgis_raster/wms
```

And in your React code the layer reference should be:

```
webgis_raster:DEM_Khuzestan
```

---

## **Architecture Overview**

The web client uses React and Leaflet to render the map and interact with GeoServer through standard WMS requests.
GeoServer handles raster rendering and SLD styling on the server side, allowing the frontend to remain lightweight while still supporting large datasets.

---