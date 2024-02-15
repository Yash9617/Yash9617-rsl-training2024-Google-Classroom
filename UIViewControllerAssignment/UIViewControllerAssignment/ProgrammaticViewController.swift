//
//  ProgrammaticViewController.swift
//  UIViewControllerAssignment
//
//  Created by Yashasvi Sharma  on 14/02/24.
//

import UIKit

class ProgrammaticViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("programmatic viewDidLoad")
        
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .yellow
        
        let label = UILabel(frame: CGRect(x: 50, y: 100, width: 300, height: 30))
        label.text = "Programmatic Access View Controller"
        view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 50, y: 200, width: 300, height: 50))
        button.setTitle("Dismiss", for: .normal)
        button.addTarget(self, action: #selector(dismissAction), for: .touchUpInside)
        button.setTitleColor(.blue, for: .normal)
        view.addSubview(button)
        
        let button2 = UIButton(frame: CGRect(x: 50, y: 300, width: 300, height: 50))
        button2.setTitle("To NIBView Controller", for: .normal)
        button2.addTarget(self, action: #selector(toNIBView), for: .touchUpInside)
        button2.setTitleColor(.blue, for: .normal)
        view.addSubview(button2)
        
        let container = UIView(frame: CGRect(x: 50, y: 500, width: 300, height: 300))
        container.backgroundColor = .red
        view.addSubview(container)
        
        self.view = view

        // Do any additional setup after loading the view.
    }
    
    @objc func toNIBView() {
        let nibViewController = ViewController(nibName: "NibView", bundle: nil)
        self.present(nibViewController, animated: true)
    }
    
    @objc func dismissAction() {
        self.dismiss(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("programmatic viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("programmatic viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("programmatic viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("programmatic viewWillDisappear")
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
