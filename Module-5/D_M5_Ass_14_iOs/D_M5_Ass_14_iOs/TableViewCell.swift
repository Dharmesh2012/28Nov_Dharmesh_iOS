//
//  TableViewCell.swift
//  D_M5_Ass_14_iOs
//
//  Created by Dharmesh N. Agravat on 18/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblStates: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
