//
//  OrderCompareView.swift
//  answer
//
//  기본 과제 ② 수식어 순서 비교 (35점)
//  - 같은 Text에 .padding().background(...) 와 .background(...).padding() 을
//    각각 적용한 화면에서 비교하고, 왜 달라지는지는 order.md 에 1문단으로 정리한다.
//

import SwiftUI

struct OrderCompareView: View {

    var body: some View {
        VStack(spacing: 40) {

            Text("modifier 순서 비교")
                .font(.title2)
                .fontWeight(.bold)

            // 사례 1: padding 먼저 -> background 나중
            // => 배경색이 padding으로 생긴 여백까지 포함해서 칠해진다 (박스가 커짐)
            VStack(spacing: 12) {
                Text(".padding().background(...)")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Text("Hello, SwiftUI")
                    .padding()
                    .background(Color.mint)
            }

            // 사례 2: background 먼저 -> padding 나중
            // => 배경색은 글자 크기만큼만 칠해지고, 그 바깥에 투명한 여백이 추가된다 (박스가 작음)
            VStack(spacing: 12) {
                Text(".background(...).padding()")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Text("Hello, SwiftUI")
                    .background(Color.mint)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    OrderCompareView()
}
