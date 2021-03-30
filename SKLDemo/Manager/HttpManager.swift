//
//  HttpManager.swift
//  SKLDemo
//
//  Created by 新光人壽 on 2020/8/25.
//  Copyright © 2020 新光人壽. All rights reserved.
//

import Foundation

class HttpManager {
    
    //題目(1)
    public static let shared = HttpManager()
    
    func callAPI1() {
        for i in 0..<100 {
            print(i)
        }
    }
    
    func callAPI2() {
        for i in 0..<1000 {
            print(i)
        }
    }
    
    func Test(callback:(() -> Void)?) {
        for i in 0..<100 {
            print(i)
        }
        callback?()
    }
}
