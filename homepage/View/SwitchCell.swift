//
//  SwitchCell.swift
//  homepage
//
//  Created by wyh on 2017/12/8.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class SwitchCell: UITableViewCell {
    var thisLabel = UILabel()
    var thisSwitch = UISwitch()
    let width = UIScreen.main.bounds.width
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        thisLabel = UILabel(frame: CGRect(x:15, y: 10, width: 200, height: 30))
        thisLabel.textColor = .black
        thisLabel.backgroundColor = .clear
        thisLabel.textAlignment = .left
        
        thisSwitch.center = CGPoint(x: width-40, y: 25)
        thisSwitch.isOn = false
        
        contentView.addSubview(thisLabel)
        contentView.addSubview(thisSwitch)
    }
    
    func initCell(title: String) {
        self.thisLabel.text = title
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
