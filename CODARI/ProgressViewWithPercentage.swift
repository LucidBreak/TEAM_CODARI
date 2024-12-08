import SwiftUI

struct ProgressViewWithPercentage: View {
    @Binding var progress: Float // 부모에서 상태를 바인딩으로 전달받음

    var body: some View {
        VStack {
            ProgressView(value: progress, total: 1.0)
                .progressViewStyle(LinearProgressViewStyle())
                .padding()

            // 퍼센트 텍스트
            Text("\(Int(progress * 100))%")
                .font(.headline)
                .padding()
        }
    }
}
