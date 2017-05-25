//
//  ViewController.swift
//  Quickchat
//
//  Created by Andrew Foster on 5/23/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import UIKit

class CameraVC: CameraViewController {
    @IBOutlet weak var previewView: PreviewView!

    override func viewDidLoad() {
        
        _previewView = previewView
        
        super.viewDidLoad()
        
    }

    @IBAction func recordBtnPressed(_ sender: Any) {
        toggleMovieRecording()
    }

    @IBAction func changeCameraBtnPressed(_ sender: Any) {
        changeCamera()
    }

}

