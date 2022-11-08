//
//  MoreViewController.swift
//  TenSystemConverter
//
//  Created by Mykyta Tishkin on 07.11.2022.
//

import UIKit

class MoreViewController: UIViewController {

    
    @IBOutlet weak var enteredRadix: UITextField!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var resultOfMoreRadix: UILabel!
    var number: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (numberLabel != nil)
        {
            numberLabel.text = number
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

    @IBAction func MoreRadixCalculation(_ sender: Any) {
        
    }
}
