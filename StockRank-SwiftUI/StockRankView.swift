//
//  ContentView.swift
//  StockRank-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct StockRankView: View {
    
    @State var list = StockModel.list
    
    var body: some View {
        
        // ScrollView를 사용 안하고 List를 사용할 시.
        List(list) {
            item in StockRankRow(stock: item)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowSeparator(.hidden)
                .frame(height: 80)
        }
        .listStyle(.plain)
        .background(.black)
        
//        ScrollView {
//            ForEach(list, id: \.self) { stock in
//                StockRankRow(stock: stock)
//                    .frame(height: 80)
//            }
//        }
//        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
    }
}
