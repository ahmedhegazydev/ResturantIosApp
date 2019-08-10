//
//  ResturantTableViewCell.swift
//  ResturantIosApp
//
//  Created by A on 8/9/19.
//  Copyright © 2019 A. All rights reserved.
//

import UIKit

class ResturantTableViewCell: UITableViewCell {

    @IBOutlet weak var resturantImageView : UIImageView!
    @IBOutlet weak var makerImageView : UIImageView!
    @IBOutlet weak var labelResturantName : UILabel!
    @IBOutlet weak var labelLocation : UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
