//
//  ViewController.swift
//  BatTatDen
//
//  Created by phong nguyen on 16/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = UIImage(named: "BulbOff")
        photoImageView.contentMode = .scaleAspectFit
        button.setTitle("Turn On", for: .normal)
        button.setTitleColor(.green, for: .normal)
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        if button.titleLabel?.text == "Turn On" {
            button.setTitle("Turn Off", for: .normal)
            button.setTitleColor(.red, for: .normal)
            photoImageView.image = UIImage(named: "BulbOn")
        } else {
            button.setTitle("Turn On", for: .normal)
            button.setTitleColor(.green, for: .normal)
            photoImageView.image = UIImage(named: "BulbOff")
        }
    }
    
}

