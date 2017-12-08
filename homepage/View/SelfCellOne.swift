//
//  SelfCellOne.swift
//  homepage
//
//  Created by wyh on 2017/12/8.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class SelfCellOne: UITableViewCell {
    var headImage = UIImageView()
    var arrow = UIImageView()
    var label = UILabel()
    let width = UIScreen.main.bounds.width
    var head: String! {
        didSet {
            self.headImage.image = UIImage(named: head)
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        headImage = UIImageView(frame: CGRect(x: 10, y: 15, width: 80, height: 80))
        headImage.layer.masksToBounds = true
        headImage.layer.cornerRadius = headImage.frame.width/2
        arrow = UIImageView(frame: CGRect(x: width - 20, y: 45, width: 10, height: 20))
        arrow.image = UIImage(named: "anotherArrow")
        label = UILabel(frame: CGRect(x: width-130, y: 30, width: 100, height: 50))
        label.textAlignment = .right
        label.textColor = .gray
        label.backgroundColor = .clear
        
        contentView.addSubview(arrow)
        contentView.addSubview(headImage)
        contentView.addSubview(label)

    }
    
    func initInformation(title: String, head: String) {
        self.label.text = title
        self.head = head
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
