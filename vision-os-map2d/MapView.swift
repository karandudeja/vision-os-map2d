import SwiftUI
import MapKit

struct MapView: View {
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 59.16497, longitude: 17.64635),
            span: MKCoordinateSpan(latitudeDelta: 0.8, longitudeDelta: 0.8)
        )
    }

    var body: some View {
        ZStack{
            Map(initialPosition: .region(region)){
                Annotation("", coordinate: CLLocationCoordinate2D(latitude: 59.17269, longitude: 17.64348), anchor: .bottom){
                    MapIconView(mapPointColor: .white)
                }
                .annotationTitles(.hidden)
                
                Annotation("", coordinate: CLLocationCoordinate2D(latitude: 59.34005, longitude: 18.06287), anchor: .bottom){
                    MapIconView(mapPointColor: .orange)
                }
                .annotationTitles(.hidden)
                
                Annotation("", coordinate: CLLocationCoordinate2D(latitude: 59.46976, longitude: 17.9152), anchor: .bottom){
                    MapIconView(mapPointColor: .red)
                }
                .annotationTitles(.hidden)
            }
            .mapStyle(.standard(elevation: .realistic)) //.standard, .imagery, .hybrid
            .clipped()
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .padding()
        }
        .toolbar{
            ToolbarItem(placement: .bottomOrnament, content: {
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Button 1")
                    })
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Button 2")
                    })
                }
            })
        }
    }
    
}

/*
#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 59.16497, longitude: 17.64635))
}
 
 corrdi : 59.17269, 17.64348
*/
