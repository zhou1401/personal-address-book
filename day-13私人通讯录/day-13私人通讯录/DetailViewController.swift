//
//  DetailViewController.swift
//  day-13私人通讯录
//
//  Created by jyz on 2017/11/27.
//  Copyright © 2017年 HDGS. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var titleText: UITextField!
    
    var person:Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //判断person是否有值，如果有设置UI
        if person != nil {
            nameText.text=person?.name
            phoneText.text=person?.phone
            titleText.text=person?.title
        }

    }
    //MARK:-保存按钮事件
    @IBAction func savePerson(_ sender: Any) {
    }



   
}
