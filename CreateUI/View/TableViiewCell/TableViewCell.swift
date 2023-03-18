//
//  TableViewCell.swift
//  CreateUI
//
//  Created by Quang Ha on 16/03/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mainTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
