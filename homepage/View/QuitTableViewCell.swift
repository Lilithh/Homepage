//
//  QuitTableViewCell.swift
//  homepage
//
//  Created by wyh on 2017/12/8.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class QuitTableViewCell: UITableViewCell {
    var title = UILabel()
    let width = UIScreen.main.bounds.width
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        title = UILabel(frame: CGRect(x: width/2-50, y: 8, width: 100, height: 34))
        title.textAlignment = .center
        title.textColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1)
        title.font = UIFont.systemFont(ofSize: 20, weight: .regular)
    
        contentView.addSubview(title)
    }
    
    func initTitle(theTitle: String) {
        self.title.text = theTitle
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
