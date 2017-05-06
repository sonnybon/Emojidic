//
//  DefinitionViewController.swift
//  Emoji dic
//
//  Created by Sonny Bonyadi on 2017-05-04.
//  Copyright © 2017 Sonny Bonyadi. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    @IBOutlet weak var explainLabel: UILabel!
    @IBOutlet weak var bigEmoji: UILabel!
    
    
    
    var emoji = "no emoji"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    bigEmoji.text = emoji
        
        if emoji == "🐬" {
            explainLabel.text = "this is a dolphoin"
        }
        
        if emoji == "🐹" {
            explainLabel.text = "you are a mouse"
        }
        if emoji == "👠" {
            explainLabel.text = "Love to lick those legs"
        }
        if emoji == "😀" {
            explainLabel.text = "smile but question"
        }
        if emoji == "💩" {
            explainLabel.text = "chocolate turd"
        }
        if emoji == "😨" {
            explainLabel.text = "freezing head"
        }

        if emoji == "😎" {
            explainLabel.text = "oakley"
        }

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
