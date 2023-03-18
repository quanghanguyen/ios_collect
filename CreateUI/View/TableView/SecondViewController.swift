//
//  SecondViewController.swift
//  CreateUI
//
//  Created by Quang Ha on 16/03/2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    var receivedString: String? = nil
    @IBOutlet weak var labelReceived: UILabel!
    @IBOutlet weak var tableView: UITableView!
    let myData: [String] = ["Ha", "Nguyen", "Quang"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelReceived.text = receivedString
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        self.registerTableViewCell()
    }
}

extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TableViewCell
        cell.mainTitle.text = myData[indexPath.row]
        let imageURL = URL(string: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg")
        return cell
    }
    
    // Table View item click
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableCellClick(indexPath.row)
    }
}

// MARK: - Functions
extension SecondViewController {
    private func registerTableViewCell() {
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
    
    private func tableCellClick(_ index: Int) {
        let data = myData[index]
        let detailVC = TableDetailViewController()
        detailVC.receivedData = data
        let navigationVC = UINavigationController(rootViewController: detailVC)
        navigationVC.modalPresentationStyle = .fullScreen
        present(navigationVC, animated: true)
    }
}
