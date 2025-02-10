import SwiftUI

struct SeriesList: View {
    var body: some View {
        
        NavigationView{
            List(seriesSourceList) {
                series in
                NavigationLink(destination:BingeRow(series: series)) {
                    BingeRow(series: series)
                }
            }
        }
        
        .padding()
    }
}

#Preview {
    SeriesList()
}
