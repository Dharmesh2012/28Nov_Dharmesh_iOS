//
//  TableViewCell.swift
//  D_M678_Ass_4_iOs
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    
    var userObj: UserModel? {
        didSet {
            lblName.text = userObj?.name
            lblCity.text = userObj?.city
        }
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
