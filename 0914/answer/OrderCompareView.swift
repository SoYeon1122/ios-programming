//
//  OrderCompareView.swift
//  answer
//

import SwiftUI

struct OrderCompareView: View {

    var body: some View {
        VStack(spacing: 40) {

            Text("modifier 순서 비교")
                .font(.title2)
                .fontWeight(.bold)

            VStack(spacing: 12) {
                Text(".padding().background(...)")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Text("Hello, SwiftUI")
                    .padding()
                    .background(Color.mint)
            }

           
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
