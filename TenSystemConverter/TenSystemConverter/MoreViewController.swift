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
        enteredRadix.keyboardType = .numberPad
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
        let tempRadix: Int? = Int(enteredRadix.text!)
        let tempEnum: Int? = Int(numberLabel.text!)
        
        resultOfMoreRadix.text = String(tempEnum!, radix: tempRadix!)
    }
    @IBAction func copyButton(_ sender: Any) {
        print("Button tapped VC-2")
        UIPasteboard.general.string = resultOfMoreRadix.text
    }
    
    @IBAction func changeNumButton(_ sender: Any) {
        let mainController = storyboard?.instantiateViewController(withIdentifier: "mainVC") as! ViewController
        // mainController.eNum.text = numberLabel.text
        mainController.modalPresentationStyle = .fullScreen
        present(mainController, animated: true, completion: nil)
    }
}
