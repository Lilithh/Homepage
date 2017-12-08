//
//  extension.swift
//  homepage
//
//  Created by wyh on 2017/12/7.
//  Copyright © 2017年 wyh. All rights reserved.
//
import UIKit
import Foundation

extension ViewController: UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate {
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
        var cellshow: CellContainer
        if indexPath.section == 0 {
            cellshow = self.cellContain[indexPath.row]
        } else {
            cellshow = self.cellContain[indexPath.row+3]
        }
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "allType") as? DefCell
        if cell == nil {
            cell = DefCell(style: .default, reuseIdentifier: "allType")
        }
        cell?.initCell(title: cellshow.label, image: cellshow.pic)
//        cell?.icon.image = UIImage(named: cellshow.pic) // 图片要这样设置, 或在 DefCell中用 didSet设置
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
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
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        let isShowHomePage: Bool = viewController.isKind(of: ViewController.self)
        navigationController.setNavigationBarHidden(isShowHomePage, animated: true)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                print("press the cell1")
            case 1:
                print("press the cell2")
            default:
                //传值
                let pushViewController = EditFileViewController()
                self.navigationController?.pushViewController(pushViewController, animated: true)
            }
        } else {
            print("press the section1, cell0")
        }
    }

    
    
    
}


