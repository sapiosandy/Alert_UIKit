//
//  ViewController.swift
//  Alert_UIKit
//
//  Created by Sandra Gomez on 2/24/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mySwitch: UISwitch!
    var whichStyle: UIAlertController.Style = .alert
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        if mySwitch.isOn {
            whichStyle = .alert
        } else {
            whichStyle = .actionSheet
        }
        
        let alert = UIAlertController(title: "Warning", message: "Do you really want to delete this message?", preferredStyle: whichStyle)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            //Just dismiss the action sheet
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

