//
//  ViewController.swift
//  homepage
//
//  Created by wyh on 2017/12/6.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView = UIImageView()
//    let blurEffet = UIBlurEffect(style: .light)
    let blurView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
    var tableView = UITableView()
    var cellContain: [CellContainer] = []
    
    let width = UIScreen.main.bounds.width
    let imageHeight: CGFloat = UIScreen.main.bounds.height/5*2
    let userName = "Magician"
    let userHeadImage = "pack"
    let pointValue = 3
    let postValue = 20
    let ageValue = 355
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let title = ["我的收藏", "我的发布", "编辑资料", "通用设置"]
        let pic = ["star", "arrow", "file", "gear"]
        
        tableView = UITableView(frame: UIScreen.main.bounds, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        let headerView = UIView(frame: CGRect(x:0, y:0, width: self.width, height: self.imageHeight ))
//        headerView.backgroundColor = UIColor.clear
        tableView.tableHeaderView = headerView
        
        imageView = UIImageView(image: UIImage(named: userHeadImage))
        imageView.frame = (tableView.tableHeaderView?.bounds)!
        imageView.isHidden = false
        imageView.backgroundColor = .red
        headerView.addSubview(imageView)
        
        
        blurView.frame = (tableView.tableHeaderView?.bounds)!
        headerView.addSubview(blurView)
        
        let headButton = UIButton(type: .custom)
        headButton.frame = CGRect(x: width/2-40, y: imageHeight/2-80, width: 80, height: 80)
        headButton.alpha = 1
//        headButton.backgroundColor = .black
        let headImage = UIImage(named: userHeadImage)
        let headImageSelect = UIImage(named: "purchase")
        headButton.setImage(headImage, for: .normal)
        headButton.setImage(headImageSelect, for: .highlighted)
        headButton.imageView?.layer.cornerRadius = headButton.frame.width/2
        headerView.addSubview(headButton)
        
        let headLabel = UILabel(frame: CGRect(x: width/2-40, y: imageHeight/2+10, width: 80, height: 20))
        headLabel.backgroundColor = .clear
        headLabel.text = self.userName
        headLabel.textColor = .white
        headLabel.font = UIFont.boldSystemFont(ofSize: 20)
        headLabel.textAlignment = .center
        headLabel.sizeToFit()
        headerView.addSubview(headLabel)
        
        let line1 = UIView(frame: CGRect(x: width/3, y: imageHeight/4*3+10, width: 2, height: imageHeight/4-20))
        line1.backgroundColor = .white
        let line2 = UIView(frame: CGRect(x: width/3*2, y: imageHeight/4*3+10, width: 2, height: imageHeight/4-20))
        line2.backgroundColor = .white
        headerView.addSubview(line1)
        headerView.addSubview(line2)
        
        let pointLebel = UILabel(frame: CGRect(x: width/6-15, y: imageHeight-30, width: 50, height: 20))
        pointLebel.text = "积分"
        pointLebel.backgroundColor = .clear
        pointLebel.textColor = .white
        headerView.addSubview(pointLebel)
        let pointValueLabel = UILabel(frame: CGRect(x: width/6-20, y: imageHeight - 70, width: 40, height: 20))
        pointValueLabel.textColor = .white
        pointValueLabel.text = String(pointValue)
        pointValueLabel.textAlignment = .center
        pointValueLabel.font = UIFont.boldSystemFont(ofSize: 20)
        headerView.addSubview(pointValueLabel)
        
        let postLebel = UILabel(frame: CGRect(x: width/6*3-15, y: imageHeight-30, width: 50, height: 20))
        postLebel.text = "发帖"
        postLebel.backgroundColor = .clear
        postLebel.textColor = .white
        headerView.addSubview(postLebel)
        let postValueLabel = UILabel(frame: CGRect(x: width/6*3-20, y: imageHeight - 70, width: 40, height: 20))
        postValueLabel.textColor = .white
        postValueLabel.text = String(postValue)
        postValueLabel.textAlignment = .center
        postValueLabel.font = UIFont.boldSystemFont(ofSize: 20)
        headerView.addSubview(postValueLabel)
        
        let ageLebel = UILabel(frame: CGRect(x: width/6*5-15, y: imageHeight-30, width: 50, height: 20))
        ageLebel.text = "站龄"
        ageLebel.backgroundColor = .clear
        ageLebel.textColor = .white
        headerView.addSubview(ageLebel)
        let ageValueLabel = UILabel(frame: CGRect(x: width/6*5-20, y: imageHeight - 70, width: 40, height: 20))
        ageValueLabel.textColor = .white
        ageValueLabel.text = String(ageValue)
        ageValueLabel.textAlignment = .center
        ageValueLabel.font = UIFont.boldSystemFont(ofSize: 20)
        headerView.addSubview(ageValueLabel)
        let dayLabel = UILabel(frame: CGRect(x: width/6*5+20, y: imageHeight - 63, width: 20, height: 20))
        dayLabel.text = "天"
        dayLabel.backgroundColor = .clear
        dayLabel.font = UIFont.boldSystemFont(ofSize: 10)
        dayLabel.textColor = .white
        headerView.addSubview(dayLabel)
        
        
        for i in 0...title.count-1 {
            let cell = CellContainer(label: title[i], pic: pic[i])
            self.cellContain.append(cell)
        }
        
        
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
