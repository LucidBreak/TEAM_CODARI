//
//  FaceIDService.swift
//  CODARI
//
//  Created by 김준서 on 2024/12/09.
//

import LocalAuthentication

// Face ID 인증을 관리하는 서비스
class FaceIDService {
    
    // Face ID 사용 가능 여부 확인
    func checkFaceIDAvailability(completion: @escaping (String, Bool) -> Void) {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            completion("Face ID 사용 가능", true)
        } else {
            if let laError = error as? LAError {
                switch laError.code {
                case .biometryNotEnrolled:
                    completion("Face ID 또는 Touch ID가 설정되지 않았습니다. 설정에서 활성화하세요.", false)
                case .biometryLockout:
                    completion("Face ID 또는 Touch ID가 잠겼습니다. 설정에서 잠금을 해제하세요.", false)
                default:
                    completion("Face ID를 사용할 수 없습니다.", false)
                }
            }
        }
    }
    
    // Face ID 인증 처리
    func authenticateWithFaceID(completion: @escaping (String) -> Void) {
        let context = LAContext()
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Face ID로 인증하세요") { success, error in
            DispatchQueue.main.async {
                if success {
                    completion("Face ID 인증 성공")
                } else {
                    if let error = error {
                        completion("인증 실패: \(error.localizedDescription)")
                    }
                }
            }
        }
    }
}
