//
//  ViewController.swift
//  Adding TextField in UIAlertController
//
//  Created by Nikhil Saini on 17/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitTapped(_ sender: Any) {
        
        let alert = UIAlertController(title: "SUBMISSION", message: "Enter Your Name", preferredStyle: .alert)
        
        alert.addTextField{ (textfiled) in
            textfiled.placeholder = "Enter Your Name"
        }
        
        let submit = UIAlertAction(title: "Submit", style: .default) { action in
            if let name = alert.textFields?.first?.text {
                self.myLabel.text = "Name : \(name)"
            }
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Cancel the Operation")
        }
        
        alert.addAction(submit)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
}

