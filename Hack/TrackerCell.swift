//
//  TrackerCell.swift
//  Hack
//
//  Created by Prasanna Vishwas Ballal on 19/07/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
//

import UIKit

class TrackerCell: UITableViewCell {

    @IBOutlet weak var trackerValue: UILabel!
    @IBOutlet weak var primaryDescription: UILabel!
    @IBOutlet weak var secondaryDescription: UILabel!
    @IBOutlet weak var imageForTracker: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
