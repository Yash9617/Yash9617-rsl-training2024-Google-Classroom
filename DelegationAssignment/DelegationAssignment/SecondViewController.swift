//
//  SecondViewController.swift
//  DelegationAssignment
//
//  Created by Yashasvi Sharma  on 21/02/24.
//

import UIKit

class SecondViewController: UIViewController {
    weak var delegate: BackgroundColorDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func changeToRedColor(_ sender: Any) {
        delegate?.didSelectColor(.red)
        self.navigationController?.dismiss(animated: true)
    }
    
    @IBAction func changeToBlueColor(_ sender: Any) {
        delegate?.didSelectColor(.blue)
        self.navigationController?.dismiss(animated: true)
    }
    
    @IBAction func changeToYellowColor(_ sender: Any) {
        delegate?.didSelectColor(.yellow)
        self.navigationController?.dismiss(animated: true)
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
