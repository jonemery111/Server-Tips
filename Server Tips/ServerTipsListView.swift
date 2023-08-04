//
//  ServerTipsListView.swift
//  Server Tips
//
//  Created by Benjamin A. Morton on 7/20/23.
//

import SwiftUI

struct ServerTipsListView: View {
    var body: some View {
        VStack {
            HStack {
                Text ("Date")
                Text ("Sales")
                Text ("TipRatio")
            }
            List {
                ForEach(0..<5) {
                    Text("Date is xxxx Sales is xxx TipRatio is \($0)")
                }
            }
        }
        
    }
}

struct ServerTipsListView_Previews: PreviewProvider {
    static var previews: some View {
        ServerTipsListView()
    }
}
