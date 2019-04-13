//
//  ViewController.swift
//  Level1
//
//  Created by 太田 一毅 on 2019/04/13.
//  Copyright © 2019 太田 一毅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var number = 0
    var names = ["Apple", "Banana", "Carrot"]
    @IBOutlet var label: UILabel!
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
    }
}

