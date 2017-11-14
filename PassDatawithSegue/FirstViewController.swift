//
//  ViewController.swift
//  SegueApp
//
//  Created by Luyen on 10/16/17.
//  Copyright © 2017 Luyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    
    let getDataSource = SplitDataSource()
    let getDelegate = SplitDelegate()
    override func viewDidLoad() {
        super.viewDidLoad()
    tableView.delegate = getDelegate
    tableView.dataSource = getDataSource
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dataSend = getDataSource.arrayNumber[(tableView.indexPathForSelectedRow?.row)!]
        (segue.destination as! SecondViewController).getData = dataSend
    }
    @IBAction func unwindToFirst(sender: UIStoryboardSegue) {
        getDataSource.arrayNumber[(tableView.indexPathForSelectedRow?.row)!] = ((sender.source as? SecondViewController)?.getData)!
        tableView.reloadData()
    }
}
class SplitDataSource: NSObject ,UITableViewDataSource {
    var arrayNumber = [Int](1...10)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(arrayNumber[indexPath.row])"
        return cell
    }
    
    
}
class SplitDelegate: NSObject, UITableViewDelegate {
    func numberOfSection(in tableView: UITableView) -> Int {
        return 1
    }
}
