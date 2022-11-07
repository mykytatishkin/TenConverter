//
//  MoreViewController.swift
//  TenSystemConverter
//
//  Created by Mykyta Tishkin on 07.11.2022.
//

import UIKit

class MoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var enteredNum: UITextField!
    @IBOutlet weak var enteredRadix: UITextField!
    @IBOutlet weak var resultOfCalculatings: UILabel!
    
    @IBAction func calculateRadix(_ sender: Any) {
        
        var tempEnum: Int? = Int(enteredNum.text!)
        var tempRadix: Int? = Int(enteredRadix.text!)
        
        resultOfCalculatings.text = String(tempEnum!, radix: tempRadix!)
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
