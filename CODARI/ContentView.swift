import SwiftUI
import UserNotifications

struct ContentView: View {
    
    // 알림 상태를 추적하는 변수
    @State private var isNotificationEnabled = true
    
    var body: some View {
        VStack {
            Text("Push Notification Example")
                .padding()
            
            // 알림 켜기/끄기 스위치
            Toggle(isOn: $isNotificationEnabled) {
                Text(isNotificationEnabled ? "알림 켬" : "알림 끔")
                    .padding()
            }
            .padding()
            
            // 버튼: 알림을 보내는 버튼
            Button("Send Notification") {
                if isNotificationEnabled {
                    // 알림이 켜져 있으면 로컬 알림을 트리거
                    pushNotification(title: "Hello!", body: "이 문자는 준서의 간절함입니다", seconds: 5, identifier: "testNotification")
                } else {
                    print("알림이 꺼져 있습니다. 알림을 켜주세요.")
                }
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
