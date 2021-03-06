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
    
    
    //完成回调属性
    //闭包的返回值是可选的
    //var completionCallBack:()->()?
    var completionCallBack:(()->())?

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
        //1.判断person 是否为nil，如果是就新建
        if person == nil {
            person = Person()
        }
        //2 用ui更新person的内容
        person?.name=nameText.text
        person?.phone=phoneText.text
        person?.title=titleText.text
        //3 执行闭包回调
        completionCallBack?()
        //返回上一级界面
        //Expression of type 'UIViewController?' is unused
        //方法的返回值没有使用
        // _ 可以忽略一切不关心的内容！
        _ = navigationController?.popViewController(animated: true)
        
    }



   
}
