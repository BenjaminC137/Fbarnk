//
//  ViewController.swift
//  Fbarnk
//
//  Created by Benjamin Salasek on 9/15/19.
//  Copyright © 2019 Benjamin Salasek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var changingText: UITextField!
    @IBOutlet weak var aloeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonChangy(_ sender: UIButton) {
        changingText.text = "fart"
    }
    
    @IBAction func rotateImage(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {
            self.aloeImage.transform = CGAffineTransform(rotationAngle: (180.0 * .pi) / 180.0)
        })
    }
}

