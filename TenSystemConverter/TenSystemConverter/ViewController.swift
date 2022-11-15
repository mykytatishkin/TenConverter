//
//  ViewController.swift
//  TenSystemConverter
//
//  Created by Mykyta Tishkin on 06.11.2022.
//

import UIKit
import UserNotifications
import Foundation

class ViewController: UIViewController {
    
    let notificationCenter = UNUserNotificationCenter.current()
    let options: UNAuthorizationOptions = [.alert, .sound, .badge]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        _ = UITextField()
        eNum.keyboardType = .numberPad
        
        
        notificationCenter.requestAuthorization(options: options) {
            (didAllow, error) in
            if !didAllow {
                print("User has declined notifications")

            }
        }
    }
    
    @IBAction func moreRadixButton(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! MoreViewController
        controller.number = eNum.text
        controller.modalPresentationStyle = .fullScreen
        present(controller,animated: true, completion: nil)
    }
    
    @IBOutlet weak var eNum: UITextField!
    @IBOutlet weak var titleOfResult: UILabel!
    
    @IBOutlet weak var sysController: UISegmentedControl!
    @IBAction func numSysController(_ sender: UISegmentedControl) {
        let tempEnum: Int? = Int(eNum.text!)
                
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
    
    func radixConverter(number: String, radix: Int) {
        do {
            if (eNum.text! == "") {
           
            }
            
            var r: Double? = Double(radix)
            var I: Double? = Double(eNum.text!)
            var reverseWriting: String = ""
            var alphabet: [String] = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
            
            let alphRange = alphabet.startIndex..<alphabet.endIndex
            while(I! > Double(0)) {
                reverseWriting += alphabet[Int(floor((I!).truncatingRemainder(dividingBy: r!)))]
                I = floor(I! / r!)
            }
            for j in 0...reverseWriting.count {
                var nIndex: Int = reverseWriting.count - j - 1
                
                titleOfResult.text! += (reverseWriting[nIndex])
            }
            
        } catch {
            print("Application work uncorrectly")
        }
    }
}

