//
//  TableViewDemoViewController.swift
//  SKLDemo
//
//  Created by 新光人壽 on 2020/8/25.
//  Copyright © 2020 新光人壽. All rights reserved.
//

import UIKit

protocol TestDelegate {
    func getName(name: String)
    
}

var delegate: TestDelegate?

class TableViewDemoViewController: UIViewController {
    
    var data: Lauguage?
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        // Do any additional setup after loading the view.
    }
    
    //題目(4)
    func initData() {
        if let src = Bundle.main.path(forResource: "LanguageData", ofType: "json"), let data = try? Data(contentsOf: URL(fileURLWithPath: src)) {
            if let obj = try? JSONDecoder().decode(Lauguage.self, from: data) {
                print(obj)
                self.data = obj
                self.tableView.reloadData()
            }
        }
    }
}


extension TableViewDemoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?.Data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        cell.name.text = data?.Data?[indexPath.row].LanguageName
        cell.desc.text = data?.Data?[indexPath.row].LanguageDesc
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //題目(5)
        delegate?.getName(name: data?.Data?[indexPath.row].LanguageName ?? "")
        self.navigationController?.popViewController(animated: true)
    }
}

