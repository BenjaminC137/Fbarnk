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
    
    var rotation:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonChangy(_ sender: UIButton) {
        changingText.text = "fart"
    }
    
    @IBAction func rotateImage(_ sender: UIButton) {
        rotation += CGFloat.pi / 2
        print(rotation)
        print(CGFloat.pi)
        RotateAloe()
    }
    @IBAction func rotateLeftAloe(_ sender: UIButton) {
        rotation -= CGFloat.pi / 2
        RotateAloe()
    }
    func RotateAloe(){
        UIView.animate(withDuration: 0.5, animations: {
            self.aloeImage.transform = CGAffineTransform(rotationAngle: self.rotation)
        })
    }
}

