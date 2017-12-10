//
//  SetUpViewController.swift
//  homepage
//
//  Created by wyh on 2017/12/8.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class SetUpViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var setTableView = UITableView()
    var openInformation: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView = UITableView(frame: UIScreen.main.bounds, style: .grouped)
//        setTableView.backgroundColor = .lightGray
        
        setTableView.dataSource = self
        setTableView.delegate = self
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.1, green: 0.4, blue: 0.9, alpha: 0.7)
        navigationItem.title = "通用设置"
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18, weight: .heavy)]
        self.view.addSubview(setTableView)
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
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                let cell = SelfCellTwo(style: .default, reuseIdentifier: "cell2")
                cell.initInformation(title: "黑名单", user: nil)
                return cell
            case 1:
               let cell = SwitchCell(style: .default, reuseIdentifier: "SwitchCell")
                cell.initCell(title: "公开个人资料")
               cell.thisSwitch.addTarget(self, action: #selector(switchThis), for: .touchUpInside)
                return cell
            default:
                let cell = SelfCellTwo(style: .default, reuseIdentifier: "cell2")
                cell.initInformation(title: "字体设置", user: nil)
                return cell
            }
        } else {
            let cell = QuitTableViewCell(style: .default, reuseIdentifier: "QuitCell")
            cell.initTitle(theTitle: "退出登录")
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    @objc func switchThis() {
        self.openInformation = !self.openInformation
        print(self.openInformation)
        // do something about whether open the information
        
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
