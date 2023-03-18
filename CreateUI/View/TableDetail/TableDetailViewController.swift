//
//  TableDetailViewController.swift
//  CreateUI
//
//  Created by Quang Ha on 16/03/2023.
//

import UIKit

class TableDetailViewController: UIViewController {

    @IBOutlet weak var detailName: UILabel!
    var receivedData: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
}

extension TableDetailViewController {
    private func layout() {
        detailName.text = receivedData
    }
}
