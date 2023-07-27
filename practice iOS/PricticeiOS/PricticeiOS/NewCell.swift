//
//  NewCell.swift
//  PricticeiOS
//
//  Created by Shyam Buhecha on 24/07/23.
//

import UIKit

class NewCell: UITableViewCell {
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    
    @IBOutlet weak var email: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view.layer.cornerRadius = 16
        view.layer.borderWidth = 2
       
        
    }
    
}
