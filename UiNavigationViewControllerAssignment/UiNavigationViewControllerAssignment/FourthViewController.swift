//
//  FourthViewController.swift
//  UiNavigationViewControllerAssignment
//
//  Created by Yashasvi Sharma  on 16/02/24.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = .purple
        self.navigationController?.navigationBar.barTintColor = .purple
        // Do any additional setup after loading the view.
    }


    @IBAction func onFourthViewControllerButtonTap(_ sender: Any) {
        let fifthViewController = FifthViewController()
        self.navigationController?.pushViewController(fifthViewController, animated: true)
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
