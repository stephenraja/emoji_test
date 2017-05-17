//
//  ViewController.swift
//  Emoji_Test
//
//  Created by Stephen Raja Roby on 5/15/17.
//  Copyright © 2017 Cloud of Carmel Mobile App. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojitableview: UITableView!
    
    var emojis = ["😀","🤡","👱‍♀️","💇🏻","🎒","🐝","🌹","🍽","🎾"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojitableview.dataSource = self
        emojitableview.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        //cell.textLabel?.text = "shei"
        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

