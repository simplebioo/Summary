//
//  ViewController.swift
//  Sumarry
//
//  Created by Bioo on 09.06.2020.
//  Copyright © 2020 Bioo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var developerLabel: UILabel!
    @IBOutlet weak var telegrammLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
       
    }
    
    func setupUI() {
       
            imageView.image = UIImage(named: "1")
            imageView.layer.cornerRadius = imageView.frame.size.width / 2
            imageView.clipsToBounds = true
            
            nameLabel.layer.shadowColor = UIColor.black.cgColor
            nameLabel.layer.shadowRadius = 3.0
            nameLabel.layer.shadowOpacity = 1.0
            nameLabel.layer.shadowOffset = CGSize(width: 3, height: 3)
            nameLabel.layer.masksToBounds = false
            
            developerLabel.layer.shadowColor = UIColor.black.cgColor
            developerLabel.layer.shadowRadius = 3.0
            developerLabel.layer.shadowOpacity = 1.0
            developerLabel.layer.shadowOffset = CGSize(width: 3, height: 3)
            developerLabel.layer.masksToBounds = false
            
            telegrammLabel.layer.shadowColor = UIColor.black.cgColor
            telegrammLabel.layer.shadowRadius = 3.0
            telegrammLabel.layer.shadowOpacity = 1.0
            telegrammLabel.layer.shadowOffset = CGSize(width: 3, height: 3)
            telegrammLabel.layer.masksToBounds = false
            
            phoneLabel.layer.shadowColor = UIColor.black.cgColor
            phoneLabel.layer.shadowRadius = 3.0
            phoneLabel.layer.shadowOpacity = 1.0
            phoneLabel.layer.shadowOffset = CGSize(width: 3, height: 3)
            phoneLabel.layer.masksToBounds = false
        
    }

    @IBAction func buttonTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "presentation", sender: self)
        
    }
    
}

