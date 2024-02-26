//
//  ViewController.swift
//  AutoLayoutAssignment
//
//  Created by Yashasvi Sharma  on 26/02/24.
//

import UIKit

class ViewController: UIViewController {

    var customView: CustomView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customView = CustomView(frame: self.view.bounds)
        self.view.addSubview(customView!)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        adjustForLandscapeMode()
    }
    
    private func adjustForLandscapeMode() {
        customView?.translatesAutoresizingMaskIntoConstraints = false
        customView?.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        customView?.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        customView?.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        customView?.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }


}

