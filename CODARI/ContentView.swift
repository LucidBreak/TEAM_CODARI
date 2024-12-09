import SwiftUI
import UserNotifications

struct ContentView: View {
    @State private var conditionMet = 0
    private let challengeText_1 = "도전과제: 레벨테스트를 완료하였다"
    private let challengeText_2 = "도전과제: c언어 진행률 100%를 달성하였다"
    private let challengeText_3 = "도전과제: 자바 진행률 100%를 달성하였다"
    private let challengeText_4 = "도전과제: 파이썬 진행률 100%를 달성하였다"
    private let challengeText_5 = "도전과제: ai한테 첫 질문하기를 달성하였다"
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            // 조건에 따라 출력되는 텍스트
            if conditionMet == 1 {
                Text("조건이 달성되었습니다!")
                    .font(.title)
                    .foregroundColor(.green)
                    .onAppear {
                        pushNotification(
                            title: "Hello!",
                            body: challengeText_1,
                            seconds: 1,
                            identifier: "testNotification"
                        )
                    }
                Text(challengeText_1)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.top, 5)
                
            }
            
            if conditionMet == 2 {
                Text("조건이 달성되었습니다!")
                    .font(.title)
                    .foregroundColor(.green)
                    .onAppear {
                        pushNotification(
                            title: "Hello!",
                            body: challengeText_2,
                            seconds: 1,
                            identifier: "testNotification"
                        )
                    }
                Text(challengeText_2)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.top, 5)
                
            }
            
            if conditionMet == 3 {
                Text("조건이 달성되었습니다!")
                    .font(.title)
                    .foregroundColor(.green)
                    .onAppear {
                        pushNotification(
                            title: "Hello!",
                            body: challengeText_3,
                            seconds: 1,
                            identifier: "testNotification"
                        )
                    }
                Text(challengeText_3)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.top, 5)
                
            }
            
            if conditionMet == 4 {
                Text("조건이 달성되었습니다!")
                    .font(.title)
                    .foregroundColor(.green)
                    .onAppear {
                        pushNotification(
                            title: "Hello!",
                            body: challengeText_4,
                            seconds: 1,
                            identifier: "testNotification"
                        )
                    }
                Text(challengeText_4)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.top, 5)
                
            }
            
            if conditionMet == 5 {
                Text("조건이 달성되었습니다!")
                    .font(.title)
                    .foregroundColor(.green)
                    .onAppear {
                        pushNotification(
                            title: "Hello!",
                            body: challengeText_5,
                            seconds: 1,
                            identifier: "testNotification"
                        )
                    }
                Text(challengeText_5)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.top, 5)
                
            }
            
            
            
            
            
            // 버튼으로 조건 변경
            Button(action: {
                conditionMet = 1 // 조건 충족
            }) {
                Text("조건 1")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                conditionMet = 2 // 조건 충족
            }) {
                Text("조건 2")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                conditionMet = 3 // 조건 충족
            }) {
                Text("조건 3")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                conditionMet = 4 // 조건 충족
            }) {
                Text("조건 4")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                conditionMet = 5 // 조건 충족
            }) {
                Text("조건 5")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            
            
            
            
            
            Button(action: {
                conditionMet = 0 // 조건 충족
            }) {
                Text("조건 초기화")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}
   

#Preview {
    ContentView()
}
