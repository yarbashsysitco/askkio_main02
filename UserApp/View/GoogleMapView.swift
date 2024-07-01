
import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        return mapView
    }

    func updateUIView(_ uiView: GMSMapView, context: Context) {
        // Update the view if necessary
    }
}
#Preview {
    GoogleMapView()
}


//struct MapView: UIViewRepresentable {
//    func makeUIView(context: Context) -> GMSMapView {
//        let camera = GMSCameraPosition.camera(withLatitude: 37.7749, longitude: -122.4194, zoom: 12.0) // Replace with your initial coordinates and zoom level
//        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
//        mapView.settings.myLocationButton = true
//        mapView.isMyLocationEnabled = true
//        return mapView
//    }
//    
//    func updateUIView(_ uiView: GMSMapView, context: Context) {
//        // Update the view if needed
//    }
//}
