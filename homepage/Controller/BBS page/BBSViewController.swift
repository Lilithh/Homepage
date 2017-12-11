//
//  BBSViewController.swift
//  homepage
//
//  Created by wyh on 2017/12/10.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class BBSViewController: UIViewController {
    var scrollView = UIScrollView()
    let width = UIScreen.main.bounds.width
    let pic: [String] = ["", "休闲娱乐", "学术文艺", "知性感性", "体育运动", "校务专区", "天津大学", "站务管理", "服务信息"]
    let name: [String] = ["", "休闲娱乐", "学术文艺", "知性感性", "体育运动", "校务专区", "天津大学", "站务管理", "服务信息"]
    let url: [String] = ["", "", "", "", "", "","", "", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView = UIScrollView(frame: self.view.bounds)
        scrollView.contentSize = CGSize(width: width, height: CGFloat((pic.count-1))*width/4)
//        scrollView.contentInset = UIEdgeInsets(top: 0, left: 2, bottom: 5, right: 2)
        scrollView.isScrollEnabled = true
        scrollView.showsVerticalScrollIndicator = true
        scrollView.bounces = true
        scrollView.backgroundColor = .white
        navigationItem.title = "论坛区"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18, weight: .heavy)]
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.1, green: 0.5, blue: 0.9, alpha: 0.7)
//
        var buttonX = width*0
        var buttonY = width*0
        var labelX = width*0
        var labelY = width*0
        for i in 1...pic.count-1 {
            if i%2 == 1 {
                buttonX = width*0
                labelX = width/4-50
            } else {
                buttonX = width/2
                labelX = width/4*3-50
            }
            buttonY = CGFloat((i-1)/2) * width/2
            labelY = width/4 + CGFloat((i-1)/2)*width/2 - 10
            let button = UIButton(type: UIButtonType.custom)
            button.frame = CGRect(x: buttonX, y: buttonY, width: width/2, height: width/2)
            button.setImage(UIImage(named: pic[i]), for: .normal)
            let label = UILabel(frame: CGRect(x: labelX, y: labelY, width: 100, height: 20))
            label.text = name[i]
            label.textColor = .white
            label.textAlignment = .center
            label.backgroundColor = .clear
            scrollView.addSubview(button)
            scrollView.addSubview(label)
            button.addTarget(self, action: #selector(transView), for: .touchUpInside)
        }
      
        
        self.view.addSubview(scrollView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc private func transView() {
        let pushViewController = DiscussViewController()
        self.navigationController?.pushViewController(pushViewController, animated: true)
        //用代理传值
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
