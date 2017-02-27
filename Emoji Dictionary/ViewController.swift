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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) //in order to deselect the row after it is tapped so that when we get back to the previous page nothing will be selected
        let emoji = emojisArray[indexPath.row] // set a constant emoji with the emoji at indexPath index of emojisArray
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    } //the segue with identifier with moveSegue will simply take action and show the next view by tapping on a cell in the tableView. the sender will be the emoji that is tapped.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        // let a constant defVC (as in ViewController) to have the value of segue destination
        defVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

