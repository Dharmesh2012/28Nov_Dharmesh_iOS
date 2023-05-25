//
//  TableViewCell.swift
//  D_M678_Ass_1_iOs
//
//  Created by Dharmesh N. Agravat on 24/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblCountryname: UILabel!
    @IBOutlet weak var lblCapitalOfCountry: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
