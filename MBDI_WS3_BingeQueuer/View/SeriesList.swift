import SwiftUI

struct SeriesList: View {
    
    @State var seriesDataList = seriesSourceList
    var body: some View {
        
        NavigationView{
            List{
                ForEach(seriesDataList) { series in
                    NavigationLink(
                        destination: SeriesDetail(series: series)
                    ) { BingeRow(series: series) }
                }.onDelete(perform: delete)
            }
            .toolbar{EditButton()}
        }
        .padding()
    }
    
    func delete(at offsets: IndexSet) {
        seriesDataList.remove(atOffsets: offsets)
    }
}

#Preview {
    SeriesList()
}
