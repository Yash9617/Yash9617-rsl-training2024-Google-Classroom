//
//  NibViewController.swift
//  UIViewControllerAssignment
//
//  Created by Yashasvi Sharma  on 14/02/24.
//

import UIKit

class NibViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("nib viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToProgrammaticVC() {
        let vc = ProgrammaticViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        self.present(vc, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("nib viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("nib viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("nib viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("nib viewWillDisappear")
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
