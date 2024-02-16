//
//  ThirdViewController.swift
//  UiNavigationViewControllerAssignment
//
//  Created by Yashasvi Sharma  on 16/02/24.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = .yellow
        self.navigationController?.navigationBar.barTintColor = .yellow

        // Do any additional setup after loading the view.
    }


    @IBAction func onThirdViewControllerButtonTap(_ sender: Any) {
        let fourthViewController = FourthViewController()
        self.navigationController?.pushViewController(fourthViewController, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
