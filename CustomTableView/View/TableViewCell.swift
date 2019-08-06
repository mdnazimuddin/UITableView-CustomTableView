//
//  TableViewCell.swift
//  CustomTableView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    var amazonView:AmazonModel!{
        didSet{
            img.image = amazonView.img
            lbl1.text = amazonView.title
            lbl2.text = amazonView.details
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        img.circle()
        self.selectionStyle = .blue
    }

    

}
