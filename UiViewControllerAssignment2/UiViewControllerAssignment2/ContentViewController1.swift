//
//  ContentViewController1.swift
//  UiViewControllerAssignment2
//
//  Created by Yashasvi Sharma  on 15/02/24.
//

import UIKit

class ContentViewController1: UIViewController {

    var label: UILabel?
    var button: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()

        // Do any additional setup after loading the view.
    }
    
    
    private func setupViews() {
        label = UILabel()
        label?.text = "Label in Content View 1"
        label?.backgroundColor = .orange
        label?.textColor = .brown
        label?.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label!)
        NSLayoutConstraint.activate([
            label!.topAnchor.constraint(equalTo: view.topAnchor),
            label!.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label!.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
        
        
        button = UIButton()
        button?.setTitle("Button in Content View 1", for: .normal)
        button?.setTitleColor(.blue, for: .normal)
        button?.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(button!)
        NSLayoutConstraint.activate([
            button!.topAnchor.constraint(equalTo: label!.bottomAnchor),
            button!.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            button!.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(alongsideTransition: {
            context in if UIDevice.current.orientation.isLandscape {
                self.adjustForLandscapeMode()
            }
        })
    }
    
    private func adjustForLandscapeMode() {
        NSLayoutConstraint.deactivate([
            label!.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label!.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label!.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            label!.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20),
            label!.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}
