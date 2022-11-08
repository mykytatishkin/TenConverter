//
//  InfoViewController.swift
//  TenSystemConverter
//
//  Created by Mykyta Tishkin on 08.11.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func socialnetworkButton(_ sender: Any) {
        if let url = NSURL(string: "https://www.instagram.com/ntishkin_/"){
            UIApplication.shared.openURL(url as URL)
            }
    }
}
