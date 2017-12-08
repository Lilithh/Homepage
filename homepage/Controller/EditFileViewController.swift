//
//  EditFileViewController.swift
//  homepage
//
//  Created by wyh on 2017/12/7.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit
import Foundation

class EditFileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let userHeadImage = "pack"
    let userName = "Magician"
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: UIScreen.main.bounds, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: " ", style: .done, target: self, action: #selector(self.back))
        self.navigationItem.leftBarButtonItem?.title = " "  //没有用
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 0.1, green: 0.5, blue: 0.9, alpha: 0.7)
        self.navigationItem.title = "编辑资料"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.heavy)]
        
        self.view.addSubview(tableView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            switch indexPath.row {
            case 0:
                let cell = SelfCellOne(style: .default, reuseIdentifier: "cell1")
                cell.initInformation(title: "编辑头像", head: userHeadImage)
                return cell
            case 1:
                let cell = SelfCellTwo(style: .default, reuseIdentifier: "cell2")
                cell.initInformation(title: "昵称", user: userName)
                return cell
            default:
                let cell = SelfCellTwo(style: .default, reuseIdentifier: "cell2")
                cell.initInformation(title: "签名", user: nil)
                return cell
            }
        } else {
            let cell = SelfCellTwo(style: .default, reuseIdentifier: "cell2")
            cell.initInformation(title: "修改密码", user: nil)
            return cell
        }
    }
    
    
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                return 110
            } else {
                return 50
            }
        } else {
            return 50
        }
    }
    
    @objc func back() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
