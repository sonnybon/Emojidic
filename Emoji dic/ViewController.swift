//
//  ViewController.swift
//  Emoji dic
//
//  Created by Sonny Bonyadi on 2017-04-30.
//  Copyright © 2017 Sonny Bonyadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojiArray : [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojiArray = makeEmojiArrey()
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojiArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojiArray[indexPath.row]
        
        cell.textLabel?.text = emoji.emojiString
        return cell
    }
    
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emojii = emojiArray[indexPath.row]
        
        
        performSegue(withIdentifier: "moveSegue" , sender: emojii)
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArrey() -> [Emoji]{
        
        let emoji1 = Emoji()
        emoji1.emojiString = "😎"
        emoji1.definition  = "dude with shades"
        emoji1.category = "smiley"
        emoji1.year = 2007
        
        let emoji2 = Emoji()
        emoji2.emojiString = "😨"
        emoji2.definition  = "cold head"
        emoji2.category = "smiley"
        emoji2.year = 2010
        
        let emoji3 = Emoji()
        emoji3.emojiString = "💩"
        emoji3.definition  = "turd face"
        emoji3.category = "smiley"
        emoji3.year = 2009
        
        let emoji4 = Emoji()
        emoji4.emojiString = "😀"
        emoji4.definition  = "dude with smile"
        emoji4.category = "smiley"
        emoji4.year = 2008
        
        let emoji5 = Emoji()
        emoji5.emojiString = "👠"
        emoji5.definition  = "high heels"
        emoji5.category = "object"
        emoji5.year = 2011
        
        let emoji6 = Emoji()
        emoji6.emojiString = "🐹"
        emoji6.definition  = "hamster"
        emoji6.category = "animal"
        emoji6.year = 2013
        
        let emoji7 = Emoji()
        emoji7.emojiString = "🐬"
        emoji7.definition  = "dalphin"
        emoji7.category = "animal"
        emoji7.year = 2016
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
        
        
    }
  
}
