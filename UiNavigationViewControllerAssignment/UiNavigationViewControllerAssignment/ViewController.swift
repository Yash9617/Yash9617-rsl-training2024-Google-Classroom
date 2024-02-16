//
//  ViewController.swift
//  UiNavigationViewControllerAssignment
//
//  Created by Yashasvi Sharma  on 16/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onMainViewButtonTap(_ sender: Any) {
        let firstViewController = FirstViewController()
        let navigationController = UINavigationController(rootViewController: firstViewController)
        self.present(navigationController, animated: true)
    }
}

