//
//  DiscussViewController.swift
//  homepage
//
//  Created by wyh on 2017/12/10.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class DiscussViewController: UIViewController {
    var tableView = UITableView()
    var BbsTitle: String!  //由bbs页面push时传值
    var BbsUrl: String!   // * 由bbs页面push时传值，由此请求数据得到"类别"数组，每个类对应的url数组
    var sort: [String] = []
    var urlOfSort: [String] = []
    let content: [BBSModel] = []  //**由类别的URL, 每个类请求出2组数据放在content中
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
        tableView.backgroundColor = .lightGray
        
        //用代理请求*处数据，遵循协议将数据传回数组
        //for in 用代理请求**处数据，存储在content中

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
