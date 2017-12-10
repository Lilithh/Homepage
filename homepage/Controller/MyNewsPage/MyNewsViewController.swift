//
//  MyNewsViewController.swift
//  homepage
//
//  Created by wyh on 2017/12/10.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class MyNewsViewController: UIViewController {
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: UIScreen.main.bounds, style: .grouped)
        tableView.backgroundColor = UIColor(white: 0.3, alpha: 1)
        navigationItem.title = "我的消息"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18, weight: .heavy)]
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.1, green: 0.5, blue: 0.9, alpha: 0.7)
        
        self.view.addSubview(tableView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
