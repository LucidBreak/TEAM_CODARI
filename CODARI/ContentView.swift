//
//  ContentView.swift
//  CODARI
//
//  Created by 김준서 on 2024/11/28.
import SwiftUI

struct ContentView: View {
    @State private var progress: Float = 0.0 // 프로그레스 상태
    @State private var inputText: String = "" // 입력받을 텍스트 상태

    var body: some View {
        VStack {
            // ProgressViewWithPercentage 사용
            ProgressViewWithPercentage(progress: $progress)

            // 입력 창
            TextField("Enter progress (0 to 100)", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()

            Button(action: {
                if let input = Float(inputText), input >= 0, input <= 100 {
                    progress = input / 100 // 퍼센트 값을 진행률로 변환
                } else {
                    // 유효하지 않은 입력에 대한 기본 처리
                    inputText = ""
                }
            }) {
                Text("Set Progress")
            }
            .padding()

            Button(action: {
                progress = 0.0 // 진행률 초기화
                inputText = "" // 입력 텍스트 초기화
            }) {
                Text("Reset Progress")
            }
            .padding()
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
