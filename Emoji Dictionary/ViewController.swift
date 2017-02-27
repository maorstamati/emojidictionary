//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Maor Stamati on 2/27/17.
//  Copyright © 2017 Maor Stamati. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojisArray = ["😁","😅","😂","🤡","😍","😡","🤓","😳","😱"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojisArray.count //return the emojiArray's length for the number of rows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell() //creating a constant which is the tableviewcell
        cell.textLabel?.text = emojisArray[indexPath.row] // each cell will have the emoji in the array's index corresponding to the row's index
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

