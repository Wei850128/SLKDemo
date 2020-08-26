//
//  GCDDemoViewController.swift
//  SKLDemo
//
//  Created by 新光人壽 on 2020/8/25.
//  Copyright © 2020 新光人壽. All rights reserved.
//

import UIKit

class GCDDemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        
    }
    //題目(2)
    func initData() {
        // 最高順位
        let queue1 = DispatchQueue.global(qos: DispatchQoS.QoSClass.userInitiated)
        let queue2 = DispatchQueue.global(qos: DispatchQoS.QoSClass.userInitiated)
        // 最低順位
        let queue3 = DispatchQueue.global(qos: DispatchQoS.QoSClass.utility)
        
        queue1.async {
            HttpManager.shared.callAPI1()
        }

        queue2.async {
            HttpManager.shared.callAPI2()
            queue3.async {
                print("Complete")
            }
        }
    }
}
