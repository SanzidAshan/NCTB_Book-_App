//
//  SixVCSix.swift
//  NCTB_APP
//
//  Created by Sanzid Ashan on 4/5/17.
//  Copyright © 2017 Sanzid Ashan. All rights reserved.
//

import UIKit

class SixVCCell: UITableViewCell {

    @IBOutlet weak var viewCell: CustomViewClass!
    
    @IBOutlet weak var bookImage: UIImageView!
    
    @IBOutlet weak var bookName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
