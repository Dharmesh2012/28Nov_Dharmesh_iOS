//
//  TableViewCell.swift
//  D_M5_Ass_7_iOs
//
//  Created by Dharmesh N. Agravat on 13/03/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblMovieName: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
