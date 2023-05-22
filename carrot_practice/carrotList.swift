//
//  carrotList.swift
//  carrot_practice
//
//  Created by 이준후 on 2023/05/19.
//

import SwiftUI

struct carrotList: View {
    @State var carrots: [Carrot] = Carrot.dummies
    @State var isLoad = false
    
    var body: some View {
        NavigationView {
            List (carrots) { carrot in
                if isLoad {
                    NavigationLink {
                        carrotDetail(carrot: carrot)
                    } label: {
                        carrotRow(carrot: carrot)
                    }
                } else {
                    NavigationLink {
                        carrotDetail(carrot: carrot)
                    } label: {
                        carrotRow(carrot: carrot)
                    }
                    .redacted(reason: .placeholder)
                }

            }
            .listStyle(PlainListStyle())
        }
        .onAppear {
            carrots = load("carrotData.json")
            isLoad = true
        }
    }
}

struct carrotList_Previews: PreviewProvider {
    static var previews: some View {
        carrotList()
    }
}
