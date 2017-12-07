//
//  ViewController.swift
//  homepage
//
//  Created by wyh on 2017/12/6.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate{

    var imageView = UIImageView()
//    let blurEffet = UIBlurEffect(style: .light)
    let blurView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
    var tableView = UITableView()
    let width = UIScreen.main.bounds.width
    let imageHeight: CGFloat = 200
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
        tableView.delegate = self
        let headerView = UIView(frame: CGRect(x:0, y:0, width: self.width, height: self.imageHeight ))
//        headerView.backgroundColor = UIColor.clear
        tableView.tableHeaderView = headerView
        
        imageView = UIImageView(image: UIImage(named: "pack"))
        imageView.frame = (tableView.tableHeaderView?.bounds)!
        imageView.isHidden = false
        imageView.backgroundColor = .red
        headerView.addSubview(imageView)
        
        
        blurView.frame = (tableView.tableHeaderView?.bounds)!
        headerView.addSubview(blurView)
        
        let headButton = UIButton(type: .custom)
        headButton.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        headButton.alpha = 1
//        headButton.backgroundColor = .black
        let headImage = UIImage(named: "pack")
        let headImageSelect = UIImage(named: "purchase")
        headButton.setImage(headImage, for: .normal)
        headButton.setImage(headImageSelect, for: .highlighted)
        headButton.imageView?.layer.cornerRadius = headButton.frame.width/2
        
        headerView.addSubview(headButton)
//        imageView.addSubview(headButton)
//        let imageView = UIImageView(image: UIImage(named: "key"))
//        imageView.frame = headerView.bounds
//        imageView.isHidden = false
//        imageView.backgroundColor = .black
//        headerView.addSubview(imageView)
        
        
        self.view.addSubview(tableView)
                // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let imageWidth = self.view.frame.width
        let yOffSet = scrollView.contentOffset.y
        if yOffSet < 0 {
            let totalOffSet = self.imageHeight - yOffSet
            let rate = totalOffSet/imageHeight
            imageView.frame = CGRect(x: -(imageWidth*rate - width)/2, y: yOffSet, width: imageWidth*rate, height: totalOffSet)
            blurView.frame = CGRect(x: -(imageWidth*rate - width)/2, y: yOffSet, width: imageWidth*rate, height: totalOffSet)
        }
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
