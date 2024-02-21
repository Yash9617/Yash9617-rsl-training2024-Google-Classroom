//
//  ViewController.swift
//  DelegationAssignment
//
//  Created by Yashasvi Sharma  on 21/02/24.
//

import UIKit

protocol BackgroundColorDelegate: AnyObject {
    func didSelectColor(_ color: UIColor)
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onButtonClick(_ sender: Any) {
        let viewController = SecondViewController()
        viewController.delegate = self
        let navigationController = UINavigationController(rootViewController: viewController)
        self.present(navigationController, animated: true)
    }
    
}

extension ViewController: BackgroundColorDelegate {
    func didSelectColor(_ color: UIColor) {
        self.view.backgroundColor = color
    }
}
