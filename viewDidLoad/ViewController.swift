//
//  ViewController.swift
//  viewDidLoad
//
//  Created by 7 on 2020/12/3.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countDays: UILabel!
    
    @IBOutlet weak var grad: UIView!
    
    @IBOutlet weak var snowView: UIView!
    
    @IBOutlet weak var letSnow: UIButton!
    
    @objc func tapped() {
        snowView.addSubview(snow())
    }
    
    @IBOutlet weak var ring: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countDays.text = "\(count())"
        
        let gradLayer = CAGradientLayer()

        gradLayer.frame = view.bounds
        gradLayer.startPoint = CGPoint(x: 0.2, y: 0)
        gradLayer.endPoint = CGPoint(x: 0.75, y: 1)
        gradLayer.colors = [
            
            UIColor(red: 57/255, green: 90/255, blue: 50/255, alpha: 1).cgColor,
            UIColor(red: 96/255, green: 136/255, blue: 73/255, alpha: 1).cgColor,
            UIColor(red: 135/255, green: 175/255, blue: 121/255, alpha: 1).cgColor,
            UIColor(red: 207/255, green: 234/255, blue: 195/255, alpha: 1).cgColor,
            UIColor(red: 246/255, green: 243/255, blue: 224/255, alpha: 1).cgColor,

            UIColor(red: 249/255, green: 238/255, blue: 218/255, alpha: 1).cgColor,
            
            UIColor(red: 238/255, green: 234/255, blue: 197/255, alpha: 1).cgColor,
            UIColor(red: 255/255, green: 165/255, blue: 128/255, alpha: 1).cgColor,
            UIColor(red: 223/255, green: 97/255, blue: 101/255, alpha: 1).cgColor,
            UIColor(red: 185/255, green: 42/255, blue: 54/255, alpha: 1).cgColor,
            UIColor(red: 153/255, green: 0/255, blue: 39/255, alpha: 1).cgColor,

        ]
        
        grad.layer.addSublayer(gradLayer)
        
        
        letSnow.addTarget(self, action: #selector(tapped), for: .touchDown)
        
        let ringGif = UIImage.animatedImageNamed("ring-", duration: 1.5)
        ring.image = ringGif
        ring.alpha = 0.75

    }


}

