//
//  ContentView.swift
//  CODARI
//
//  Created by 김준서 on 2024/11/28.

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = FaceIDViewModel()
    
    var body: some View {
        VStack {
            // 토글 UI
            Toggle(isOn: $viewModel.isFaceIDEnabled) {
                Text("Face ID 사용")
                    .font(.title)
            }
            .padding()
            .onChange(of: viewModel.isFaceIDEnabled) { newValue in
                if newValue {
                    viewModel.authenticateWithFaceID()
                } else {
                    viewModel.authenticationStatus = "Face ID 사용 안 함"
                }
            }
            
            // 인증 상태 표시
            Text(viewModel.authenticationStatus)
                .font(.headline)
                .padding()
        }
        .onAppear {
            viewModel.checkFaceIDAvailability()
            // 앱이 foreground로 돌아올 때마다 인증을 시도
            viewModel.authenticateWithFaceID()
        }
    }
}



#Preview {
    ContentView()
}
