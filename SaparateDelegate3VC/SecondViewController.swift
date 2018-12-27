//
//  SecondViewController.swift
//  SaparateDelegate3VC
//
//  Created by Duc Anh on 11/15/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate: class {
    func speakVC2(data: String)
}

class SecondViewController: UIViewController, LastViewControllerDelegate {
    func speakVC3(data: String) {
        delegate?.speakVC2(data: data)
    }
    @IBOutlet weak var secondTextField: UITextField!
    
    weak var delegate: SecondViewControllerDelegate?
    var data: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if data != nil {
            secondTextField.text = data
        }
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? LastViewController {
            destination.delegate = self
            destination.data = secondTextField.text
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
