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
    
    var emojiArray = ["😎","😨","💩","😀","👠","🐹","🐬"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojiArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = emojiArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emoj = emojiArray[indexPath.row]
        
        
        performSegue(withIdentifier: "moveSegue" , sender: emoj)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   let def = segue.destination as! DefinitionViewController
   def.emoji = sender as! String
    
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


