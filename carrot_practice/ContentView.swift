//
//  ContentView.swift
//  carrot_practice
//
//  Created by 이준후 on 2023/05/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            carrotList()
                .tabItem {
                    Label("홈", systemImage: "house")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
