//
//  FunctionTableViewCell.swift
//  不同Cell樣式的TableVIew練習
//
//  Created by 林仲景 on 2023/4/29.
//

import UIKit

class FunctionTableViewCell: UITableViewCell {

    
    @IBOutlet weak var serviceImageView: UIImageView!
    @IBOutlet weak var serviceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
