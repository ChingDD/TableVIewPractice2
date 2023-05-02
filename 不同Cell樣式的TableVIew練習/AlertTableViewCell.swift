//
//  AlertTableViewCell.swift
//  不同Cell樣式的TableVIew練習
//
//  Created by 林仲景 on 2023/4/29.
//

import UIKit

class AlertTableViewCell: UITableViewCell {
 
    
    @IBOutlet weak var ticketCheckLabel: UILabel!
    @IBOutlet weak var unpaidCheckLabel: UILabel!
    @IBOutlet weak var unticketedCheckLabel: UILabel!
    
    
    @IBOutlet weak var ticketCheckButton: UIButton!
    @IBOutlet weak var unpaidCheckButton: UIButton!
   
    @IBOutlet weak var unticketedCheckButton: UIButton!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        // Configure the view for the selected state
    }
    
}
