//
//  extension.swift
//  homepage
//
//  Created by wyh on 2017/12/7.
//  Copyright © 2017年 wyh. All rights reserved.
//
import UIKit
import Foundation

extension ViewController: UITableViewDataSource, UITableViewDelegate {
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
            cellshow = self.cellContain[indexPath.row]
        }
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "allType")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "allType")
        }
        cell?.textLabel?.textColor = .black
       cell?.textLabel?.text = cellshow.label
       // cell.pic
        
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
    
}


