//
//  DelegateProtocol.swift
//  Quickchat
//
//  Created by Andrew Foster on 5/25/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import Foundation

protocol CameraVCDelegate: NSObjectProtocol {
    func shouldEnableRecordUI(_ enable: Bool)
    
    func shouldEnableCameraUI(_ enable: Bool)
    
    func canStartRecording()
    
    func recordingHasStarted()
    
    func videoRecordingComplete(_ videoURL: URL)
    
    func videoRecordingFailed()
    
    func snapshotTaken(_ snapshotData: Data)
    
    func snapshotFailed()
}
