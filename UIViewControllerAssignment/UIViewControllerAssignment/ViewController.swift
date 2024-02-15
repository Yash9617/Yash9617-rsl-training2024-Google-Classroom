//
//  ViewController.swift
//  UIViewControllerAssignment
//
//  Created by Yashasvi Sharma  on 14/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("main viewDidLoad")
    }


    @IBAction func onNibButtonTap(_ sender: Any) {
        let nibViewController = ViewController(nibName: "NibView", bundle: nil)
        self.present(nibViewController, animated: true)
    }
    
    
    @IBAction func onProgrammaticButtonTap(_ sender: Any) {
        let vc = ProgrammaticViewController()
        vc.modalPresentationStyle = .popover
        vc.modalTransitionStyle = .flipHorizontal
        self.present(vc, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("main viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("main viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("main viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("main viewWillDisappear")
    }
}

