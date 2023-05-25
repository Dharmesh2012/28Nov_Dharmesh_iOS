//
//  UserCell.swift
//  D_M678_Ass_5_iOs
//
//  Created by Dharmesh N. Agravat on 25/05/23.
//

import UIKit

class UserCell: UITableViewCell {
    var user : UserEntity? {
        didSet{
            userConfiguration()
        }
    }
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var fullNamelbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func userConfiguration() {
        guard let user else {return}
        fullNamelbl.text = (user.firstName ?? "") + " " + (user.lastName ?? "")
        emailLbl.text = "Email : \(user.email ?? "")"
    }
    
}
