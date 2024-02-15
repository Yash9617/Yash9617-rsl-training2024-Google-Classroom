//
//  ViewController.swift
//  UiViewControllerAssignment2
//
//  Created by Yashasvi Sharma  on 15/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupContainerViews()
        // Do any additional setup after loading the view.
    }

    private func setupContainerViews() {
        let containerView1 = UIView(frame: CGRect(x: 20, y: 100, width: 400, height: 100))
        self.view.addSubview(containerView1)
        let contentViewController1 = ContentViewController1()
        addChild(contentViewController1)
        contentViewController1.view.translatesAutoresizingMaskIntoConstraints = false
        containerView1.addSubview(contentViewController1.view)
        
        let containerView2 = UIView(frame: CGRect(x: 20, y: 210, width: 400, height: 100))
        self.view.addSubview(containerView2)
        let contentViewController2 = ContentViewController2()
        addChild(contentViewController2)
        contentViewController2.view.translatesAutoresizingMaskIntoConstraints = false
        containerView2.addSubview(contentViewController2.view)
        
        let containerView3 = UIView(frame: CGRect(x: 20, y: 320, width: 400, height: 100))
        self.view.addSubview(containerView3)
        let contentViewController3 = ContentViewController3()
        addChild(contentViewController3)
        contentViewController3.view.translatesAutoresizingMaskIntoConstraints = false
        containerView3.addSubview(contentViewController3.view)
    }
   

}

