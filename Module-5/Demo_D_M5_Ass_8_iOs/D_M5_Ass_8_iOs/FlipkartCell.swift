//
//  FlipkartCell.swift
//  D_M5_Ass_8_iOs
//
//  Created by Dharmesh N. Agravat on 17/03/23.
//

import UIKit

class FlipkartCell: UITableViewCell {
    static let id = "FlipkartCell"
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
