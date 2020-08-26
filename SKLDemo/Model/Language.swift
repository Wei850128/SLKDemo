//
//  Language.swift
//  SKLDemo
//
//  Created by 新光人壽 on 2020/8/25.
//  Copyright © 2020 新光人壽. All rights reserved.
//

import Foundation
struct Lauguage: Codable {
    let Data: [LanguageDetail]?
    
}

struct LanguageDetail: Codable {
    let LanguageName: String?
    let LanguageDesc: String?
}
