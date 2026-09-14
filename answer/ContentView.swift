//
//  ContentView.swift
//  answer
//
//  기본 과제 3개를 탭으로 묶어서 시뮬레이터/프리뷰 양쪽에서
//  바로 확인할 수 있도록 만든 진입 화면.
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
