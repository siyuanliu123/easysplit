//
//  LinkViewCell.swift
//  easysplit
//
//  Created by siyuan liu on 2022/7/18.
//

import UIKit

class LinkViewCell: UITableViewCell {
    @IBOutlet weak var LinkbankimageView: UIImageView!
    
    @IBOutlet weak var LinkbankLabel: UILabel!
    func update(with payment: PaymentWay){
        LinkbankimageView.image = payment.image
        LinkbankLabel.text = payment.name
    }
    /*override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }*/

}
