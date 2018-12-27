//
//  LastViewController.swift
//  SaparateDelegate3VC
//
//  Created by Duc Anh on 11/15/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

protocol LastViewControllerDelegate: class {
    func speakVC3(data: String)
}

class LastViewController: UIViewController {

    @IBOutlet weak var lastTextField: UITextField!
    weak var delegate: LastViewControllerDelegate?
    var data: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if data != nil {
            lastTextField.text = data
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickBack(_ sender: UIButton) {
        if lastTextField.text != nil {
            delegate?.speakVC3(data: lastTextField.text!)
            navigationController?.popToRootViewController(animated: true)
        }
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
