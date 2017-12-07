//
//  DefCell.swift
//  homepage
//
//  Created by wyh on 2017/12/7.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class DefCell: UITableViewCell {
    var titleLabel = UILabel()
    var icon = UIImageView()
    var arrow = UIImageView()
    var iconName: String? {
        didSet {
            self.icon.image = UIImage(named: iconName!)
        }
    }
    let arrowPic = "arrow"
    let width = UIScreen.main.bounds.width

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        titleLabel = UILabel(frame: CGRect(x: 50, y: 10, width: 200, height: 30))
        titleLabel.textColor = .black
        titleLabel.textAlignment = .left
        titleLabel.backgroundColor = .white
        
        arrow = UIImageView(image: UIImage(named: arrowPic))
        arrow.frame = CGRect(x: width - 30, y: 19, width: 18 ,height: 12)
        arrow.isHidden = false
    
        icon.frame = CGRect(x: 5, y: 7, width: 36, height: 36)
        icon.isHidden = false
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(icon)
        contentView.addSubview(arrow)
    }
    
    func initCell(title: String, image: String) {
        self.titleLabel.text = title
        self.iconName = image
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
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
