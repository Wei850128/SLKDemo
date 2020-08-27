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
        let group: DispatchGroup = DispatchGroup()
        
        let queue1 = DispatchQueue(label: "queue1", attributes: .concurrent)
        queue1.async(group: group) {
            // 事件A
            HttpManager.shared.callAPI1()
        }
        let queue2 = DispatchQueue(label: "queue2", attributes: .concurrent)
        queue2.async(group: group) {
            // 事件B
            HttpManager.shared.callAPI2()
        }
        
        group.notify(queue: DispatchQueue.main) {
            // 已處理完上述兩件事件
            print("Complete")
        }
    }
}
