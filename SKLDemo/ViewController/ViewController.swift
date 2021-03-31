//
//  ViewController.swift
//  SKLDemo
//
//  Created by 新光人壽 on 2020/8/25.
//  Copyright © 2020 新光人壽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        //題目(3)
        HttpManager.shared.Test {
            print("Complete")
        }
    }
}




extension ViewController: TestDelegate {
    //題目(5)
    func getName(name: String) {
        self.title = name
    }
}



