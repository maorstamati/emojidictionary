//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Maor Stamati on 2/27/17.
//  Copyright © 2017 Maor Stamati. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        if emoji == "😱" {
            definitionLabel.text = "This is a scream face"
        }
        if emoji == "😳" {
            definitionLabel.text = "This is a flushed face"
        }
        if emoji == "🤓" {
            definitionLabel.text = "This is a nerdy face"
        }
        if emoji == "😡" {
            definitionLabel.text = "This is an angry face"
        }
        if emoji == "😇" {
            definitionLabel.text = "This is an angel face"
        }
        if emoji == "😁" {
            definitionLabel.text = "This is a grinning face"
        }
        if emoji == "😍" {
            definitionLabel.text = "This is a heart eye face"
        }
        if emoji == "🤡" {
            definitionLabel.text = "This is a clown face"
        }
        if emoji == "😅" {
            definitionLabel.text = "This is a sweaty smiling face"
        }
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
