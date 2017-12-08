//
//  SelfCellTwo.swift
//  homepage
//
//  Created by wyh on 2017/12/8.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class SelfCellTwo: UITableViewCell {
    
    var arrow = UIImageView()
    var nameLabel = UILabel()
    var label = UILabel()
    let width = UIScreen.main.bounds.width
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        arrow = UIImageView(frame: CGRect(x: width-20, y: 15, width: 10, height: 20))
        arrow.image = UIImage(named: "anotherArrow")
        nameLabel = UILabel(frame: CGRect(x: width-130, y: 10, width: 100, height: 30))
        nameLabel.textAlignment = .right
        nameLabel.textColor = .gray
        nameLabel.backgroundColor = .clear
        label = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 30))
        label.textAlignment = .left
        label.textColor = .black
        label.backgroundColor = .clear
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(label)
        contentView.addSubview(arrow)

    }
    func initInformation(title: String, user: String?) {
        self.label.text = title
        self.nameLabel.text = user
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
