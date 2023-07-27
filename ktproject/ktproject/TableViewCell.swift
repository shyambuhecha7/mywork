//
//  TableViewCell.swift
//  ktproject
//
//  Created by Shyam Buhecha on 21/06/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var settingImg: UIImageView!
    
    @IBOutlet weak var lblSettingTitle: UILabel!
    
    @IBOutlet weak var btn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
