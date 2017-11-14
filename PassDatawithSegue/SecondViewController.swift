//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Luyen on 10/16/17.
//  Copyright © 2017 Luyen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var textChange: UITextField!
    
    var getData: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        if getData != nil {
            textChange.text = "\(getData!)"
        }
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        getData = Int(textChange.text!)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
