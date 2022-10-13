//
//  accountTableViewCell.swift
//  easysplit
//
//  Created by siyuan liu on 2022/7/18.
//

import UIKit

class accountTableViewCell: UITableViewCell {
    @IBOutlet weak var BankimageView: UIImageView!
    
    @IBOutlet weak var BankNameLabel: UILabel!
    func update(with bankaccount: Bank){
        BankimageView.image = bankaccount.image
        BankNameLabel.text = bankaccount.name
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

