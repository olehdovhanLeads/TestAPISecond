//
//  DetailTableViewCell.swift
//  TestAPISecond
//
//  Created by Oleh Dovhan on 03.08.2021.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    
    @IBOutlet weak var secondTeamLabel: UILabel!
    
    @IBOutlet weak var firstTeamLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
