//
//  ViewController.swift
//  CreateUI
//
//  Created by Quang Ha on 15/03/2023.
//
 
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var tirtleText: UILabel!
    @IBOutlet weak var navigateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayText()
        pushView()
    }
    
    private func displayText() {
        button.addTarget(self, action: #selector(buttonTouch), for: .touchUpInside)
    }
    
    @objc func buttonTouch() {
        tirtleText.text = textField.text
    }
    
    private func pushView() {
        navigateButton.addTarget(self, action: #selector(navigateTouch), for: .touchUpInside)
    }
    
    @objc func navigateTouch() {
//        let secondViewController = SecondViewController()
//        navigationController?.pushViewController(secondViewController, animated: true)
        
        let destinationVC = SecondViewController()
        destinationVC.receivedString = textField.text
        let navigationVC = UINavigationController(rootViewController: destinationVC)
        navigationVC.modalPresentationStyle = .fullScreen
        present(navigationVC, animated: true)
    }
}
