//
//  ViewController.swift
//  Alert_UIKit
//
//  Created by Sandra Gomez on 2/24/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mySwitch: UISwitch!
    @IBOutlet var myLabel: UILabel!
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
        
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: whichStyle)
        
        let okAction = UIAlertAction(title: "Dismiss", style: .default, handler: { action -> Void in
            self.myLabel.text = "OK"
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { action -> Void in
            self.myLabel.text = "Cancel"
        })
        
        let destroyAction = UIAlertAction(title: "Destroy", style: .destructive, handler: { action -> Void in
            self.myLabel.text = "Destroy"
        })
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

