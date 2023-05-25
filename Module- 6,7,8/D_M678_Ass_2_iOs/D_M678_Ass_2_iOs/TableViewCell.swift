//
//  TableViewCell.swift
//  D_M678_Ass_2_iOs
//
//  Created by Dharmesh N. Agravat on 28/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEAmail: UILabel!
    
    @IBOutlet weak var lblBody: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
