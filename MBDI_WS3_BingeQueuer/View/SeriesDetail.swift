import SwiftUI
import MapKit

struct SeriesDetail: View {
    var series:Series
    let spacerSize:CGFloat = 150
    let mapHeight:CGFloat = 300
    
    var body: some View {
        ScrollView{
            VStack{
                MapView(coordinate: CLLocationCoordinate2DMake(
                    series.latitude, series.longitude))
                .frame(height: mapHeight)
                
                CircleImage(image: Image(series.image))
                    .offset(y: -spacerSize)
                    .padding(.bottom, -spacerSize)
                
                Text(series.title)
                Text("\(series.seasons)")
                Text(series.description)
            }
        }
        .navigationTitle(series.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SeriesDetail(series: seriesSourceList[4])
}
