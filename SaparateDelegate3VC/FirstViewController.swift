//
//  ViewController.swift
//  SaparateDelegate3VC
//
//  Created by Duc Anh on 11/15/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, SecondViewControllerDelegate {
    func speakVC2(data: String) {
        firstTextField.text = data
        
    }
    
    @IBOutlet weak var firstTextField: UITextField!
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if data != nil {
            firstTextField.text = data
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.delegate = self
            destination.data = firstTextField.text
        }
    }

}

