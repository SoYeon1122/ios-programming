//
//  CounterView.swift
//  answer
//
//  기본 과제 ③ @State 버튼으로 값 바꾸기 (30점)
//  - 버튼을 누르면 숫자가 올라가고, 숫자가 5 이상이면 글자 색이 바뀌는 화면을 만든다.
//  - @State 변수 하나와 삼항 연산자(count >= 5 ? .red : .primary)면 충분하다.
//

import SwiftUI

struct CounterView: View {

    // 화면 상태를 저장하는 변수. 값이 바뀌면 body가 다시 그려진다.
    @State private var count: Int = 0

    var body: some View {
        VStack(spacing: 24) {

            // count가 5 이상이면 빨간색, 아니면 기본색으로 글자 색이 바뀐다.
            Text("\(count)")
                .font(.system(size: 64, weight: .bold))
                .foregroundStyle(count >= 5 ? .red : .primary)
                .contentTransition(.numericText())
                .animation(.default, value: count)

            Button {
                count += 1
            } label: {
                Label("숫자 올리기", systemImage: "plus.circle.fill")
                    .font(.title3)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
            }
            .buttonStyle(.borderedProminent)

            // 리셋 버튼 (필수는 아니지만 테스트하기 편하도록 추가)
            Button("초기화", role: .destructive) {
                count = 0
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    CounterView()
}
