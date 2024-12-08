//
//  ContentView.swift
//  CODARI
//
//  Created by 김준서 on 2024/11/28.
import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = LoginViewModel()  // LoginViewModel 사용
    
    var body: some View {
        VStack {
            Text("앱에 로그인되었습니다!")
                .font(.largeTitle)
                .bold()
                .padding()
            
            // 인증 상태 표시
            Text(viewModel.authenticationStatus)
                .foregroundColor(viewModel.isLoggedIn ? .green : .red)
                .padding()
            
            // Face ID 토글
            Toggle(isOn: $viewModel.isFaceIDEnabled) {
                Text("Face ID 활성화")
                    .font(.title2)
            }
            .padding()
            .onChange(of: viewModel.isFaceIDEnabled) { newValue in
                viewModel.toggleFaceID()  // 상태 변경 시 Face ID 활성화/비활성화
            }
            
            Spacer()
        }
        .onAppear {
            // 앱 실행 시 Face ID 토글 상태 불러오기
            viewModel.isFaceIDEnabled = viewModel.faceIDService.getFaceIDState()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


#Preview {
    ContentView()
}
