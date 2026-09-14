//
//  ProfileCardView.swift
//  answer
//
//  기본 과제 ① 자기소개 카드 뷰 만들기 (35점)
//  - VStack과 HStack을 함께 써서 아이콘·이름·전공·한 줄 소개가 들어간 카드를 만든다.
//  - 배경색과 모서리 둥글기를 적용한다.
//  - (가점) ZStack으로 카드 오른쪽 위에 작은 배지를 겹쳐 놓는다.
//

import SwiftUI

struct ProfileCardView: View {

    // 카드에 표시할 정보
    let iconName: String = "person.crop.circle.fill"
    let name: String = "홍길동"
    let major: String = "컴퓨터공학과"
    let introduction: String = "사람과 잘 통하는 코드를 만들고 싶은 개발자입니다."

    var body: some View {
        // ZStack: 카드 위에 배지를 겹쳐서 올리기 위한 컨테이너 (가점 요소)
        ZStack(alignment: .topTrailing) {

            // 카드 본체: 세로(VStack) 안에 가로(HStack)를 배치
            VStack(alignment: .leading, spacing: 12) {

                // HStack: 아이콘 + (이름, 전공)을 가로로 나란히 배치
                HStack(spacing: 16) {
                    Image(systemName: iconName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 56, height: 56)
                        .foregroundStyle(.white)
                        .padding(10)
                        .background(
                            Circle()
                                .fill(Color.accentColor)
                        )

                    VStack(alignment: .leading, spacing: 4) {
                        Text(name)
                            .font(.title2)
                            .fontWeight(.bold)

                        Text(major)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }

                    Spacer() // 오른쪽 여백을 밀어서 왼쪽 정렬 유지
                }

                Divider()

                // 한 줄 소개
                Text(introduction)
                    .font(.body)
                    .foregroundStyle(.primary)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(20)
            .background(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color(.secondarySystemBackground))
            )
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))

            // 가점: 카드 오른쪽 위에 작게 겹쳐진 배지
            Text("NEW")
                .font(.caption2)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding(.horizontal, 10)
                .padding(.vertical, 4)
                .background(
                    Capsule().fill(Color.orange)
                )
                .offset(x: -12, y: 12) // 카드 경계 안쪽으로 살짝 겹치게
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ProfileCardView()
}
