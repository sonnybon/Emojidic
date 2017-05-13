//
//  DefinitionViewController.swift
//  Emoji dic
//
//  Created by Sonny Bonyadi on 2017-05-04.
//  Copyright © 2017 Sonny Bonyadi. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var bigEmoji: UILabel!

    @IBOutlet weak var explainLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    var emoji = Emoji()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
       bigEmoji.text = emoji.emojiString
       explainLabel.text = "Definition: \(emoji.definition)"
       categoryLabel.text = "The Category is: \(emoji.category)"
       birthYearLabel.text = "Created in \(emoji.year)"
        
        
        
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
