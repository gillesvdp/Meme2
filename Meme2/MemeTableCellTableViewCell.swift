//
//  memeTableCellTableViewCell.swift
//  Meme2
//
//  Created by Gilles on 11/1/15.
//  Copyright © 2015 gillesvdp. All rights reserved.
//

import UIKit

class MemeTableCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var memeImage: UIImageView!
    
    @IBOutlet weak var memeText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
