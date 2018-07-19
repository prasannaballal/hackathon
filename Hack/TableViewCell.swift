//
//  TableViewCell.swift
//  Hack
//
//  Created by Sreeja Chowdhury on 7/19/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var trackerValue: UILabel!
    @IBOutlet weak var primaryDescription: UILabel!
    @IBOutlet weak var imageForTracker: UIImageView!
//    @IBOutlet weak var trackerValue: UILabel!
//    @IBOutlet weak var primaryDescription: UILabel!
//    @IBOutlet weak var imageForTracker: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
