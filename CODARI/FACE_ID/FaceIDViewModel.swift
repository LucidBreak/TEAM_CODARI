//
//  FaceIDViewModel.swift
//  CODARI
//
//  Created by 김준서 on 2024/12/09.
//
import SwiftUI

class FaceIDViewModel: ObservableObject {
    
    private var faceIDService = FaceIDService()
    
    @Published var isFaceIDEnabled: Bool = false
    @Published var authenticationStatus: String = ""
    
    init() {
        checkFaceIDAvailability()
    }
    
    // Face ID 사용 가능 여부 확인
    func checkFaceIDAvailability() {
        faceIDService.checkFaceIDAvailability { [weak self] message, isEnabled in
            self?.authenticationStatus = message
            self?.isFaceIDEnabled = isEnabled
        }
    }
    
    // Face ID 인증 시도
    func authenticateWithFaceID() {
        faceIDService.authenticateWithFaceID { [weak self] message in
            self?.authenticationStatus = message
        }
    }
}
