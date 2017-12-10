//
//  MyCollectionViewController.swift
//  homepage
//
//  Created by wyh on 2017/12/8.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class MyCollectionViewController: UIViewController {
    var thisView = UIView()
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var judgeThis = true
    override func viewDidLoad() {
        super.viewDidLoad()
        self.thisView = UIView(frame: UIScreen.main.bounds)
        self.thisView.backgroundColor = UIColor(white: 0.95, alpha: 1)
        let thisLabel = UILabel(frame: CGRect(x: width/2-80, y: height/5+10, width: 160, height: 20))
        thisLabel.text = "还没有收藏"
        thisLabel.textAlignment = .center
        thisLabel.textColor = UIColor(white: 0.75, alpha: 0.9)
        thisLabel.font = UIFont.systemFont(ofSize: 19, weight: .heavy)
        thisLabel.backgroundColor = .clear
        
        self.view.addSubview(thisView)
        self.view.addSubview(thisLabel)
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.1, green: 0.5, blue: 0.9, alpha: 0.7)
        self.navigationItem.title = "我的收藏"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18, weight: .heavy)]
        self.navigationController?.navigationBar.tintColor = .white
        
        //导航栏右边 button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "编辑", style: .plain, target: self, action: #selector(editCollection))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func editCollection() {
        if judgeThis {
            self.navigationItem.rightBarButtonItem?.title = "完成"
            judgeThis = false
        } else {
            self.navigationItem.rightBarButtonItem?.title = "编辑"
            judgeThis = true
        }
        //do something to edit
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
