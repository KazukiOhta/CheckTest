//
//  ViewController.swift
//  Level1
//
//  Created by 太田 一毅 on 2019/04/13.
//  Copyright © 2019 太田 一毅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var number = 0
    var names = ["Apple", "Banana", "Carrot"]
    var imagenames = ["apple.jpeg", "banana.jpeg", "carrot.jpg"]
    @IBOutlet var label: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var btnA: UIButton!
    @IBOutlet var btnB: UIButton!
    @IBOutlet var btnC: UIButton!
    var btns: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.label.layer.cornerRadius = 10
        self.label.layer.masksToBounds = true
        btns = [btnA, btnB, btnC]
    }

    
    @IBAction func nextbtn(){
        number += 1
        number %= 3
        show()
    }
    @IBAction func prevbtn(){
        number += 2
        number %= 3
        show()
    }
    @IBAction func nextswp(){
        number += 1
        number %= 3
        print("nextswp")
        show()
    }
    @IBAction func prevswp(){
        number += 2
        number %= 3
        print("prevswp")
        show()
    }
    @IBAction func Abtn(){
        number = 0
        show()
    }
    @IBAction func Bbtn(){
        number = 1
        show()
    }
    @IBAction func Cbtn(){
        number = 2
        show()
    }
    func show(){
        label.text = names[number]
        imageView.image = UIImage(named: imagenames[number])
    }
}

