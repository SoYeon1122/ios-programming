//
//  ContentView.swift
//  answer
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProfileCardView()
                .tabItem {
                    Label("자기소개", systemImage: "person.crop.circle")
                }

            OrderCompareView()
                .tabItem {
                    Label("순서 비교", systemImage: "square.stack.3d.up")
                }

            CounterView()
                .tabItem {
                    Label("카운터", systemImage: "plus.forwardslash.minus")
                }
        }
    }
}

#Preview {
    ContentView()
}
