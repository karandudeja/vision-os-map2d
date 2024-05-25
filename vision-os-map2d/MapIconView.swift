import SwiftUI

struct MapIconView: View {
    
    var mapPointColor : Color
    
    var body: some View {
        ZStack{
            Image("truck")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(6)
                .background(.white)
                .clipped()
                .clipShape(Circle())
        }
        .padding(4)
        .frame(width:48.0, height: 48.0)
        .background(mapPointColor)
        .clipped()
        .clipShape(Circle())
    }
}

#Preview {
    MapIconView(mapPointColor: .yellow)
}
