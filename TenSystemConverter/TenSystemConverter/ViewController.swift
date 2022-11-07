//
//  ViewController.swift
//  TenSystemConverter
//
//  Created by Mykyta Tishkin on 06.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let textField = UITextField()
        eNum.keyboardType = .numberPad
        
    }
    @IBOutlet weak var eNum: UITextField!
    @IBOutlet weak var titleOfResult: UILabel!
    
    @IBOutlet weak var sysController: UISegmentedControl!
    @IBAction func numSysController(_ sender: UISegmentedControl) {
        let selection = sender.selectedSegmentIndex
        var tempEnum: Int? = Int(eNum.text!)
                
        if(sender.selectedSegmentIndex == 0)
        {
            titleOfResult.text = String(tempEnum!, radix: 2)
        }
        else if(sender.selectedSegmentIndex == 1)
        {
            titleOfResult.text  = String(tempEnum!, radix: 8)
        }
        else if(sender.selectedSegmentIndex == 2)
        {
            titleOfResult.text  = String(tempEnum!, radix: 16)
        }
        
    }

    @IBAction func copyText(_ sender: Any) {
        print("Button tapped")
        UIPasteboard.general.string = titleOfResult.text
    }

}

