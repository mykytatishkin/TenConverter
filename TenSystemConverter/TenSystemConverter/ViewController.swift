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
        
        
    }
    
    @IBOutlet weak var eNum: UITextField!
    @IBOutlet weak var titleOfResult: UILabel!
    
    @IBAction func numSysController(_ sender: UISegmentedControl) {
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
}

