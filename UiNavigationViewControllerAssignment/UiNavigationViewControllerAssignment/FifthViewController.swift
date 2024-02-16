//
//  FifthViewController.swift
//  UiNavigationViewControllerAssignment
//
//  Created by Yashasvi Sharma  on 16/02/24.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = .cyan
        self.navigationController?.navigationBar.barTintColor = .cyan


        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.navigationBar.topItem?.title = "Title"
        self.navigationController?.navigationBar.topItem?.rightBarButtonItem?.title = "Done"
    }
    
    @objc func onNaviButtonTap() {
        print("Navi Button Tapped!")
    }


    @IBAction func popToVC4(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func popToVC3(_ sender: Any) {
        let viewControllers = self.navigationController?.viewControllers
        self.navigationController!.popToViewController(viewControllers![viewControllers!.count - 3], animated: true)
    }
    
    @IBAction func popToVC1(_ sender: Any) {
        let viewControllers = self.navigationController?.viewControllers
        self.navigationController!.popToViewController(viewControllers![viewControllers!.count - 5], animated: true)
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
