//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by tester on 11/7/18.
//  Copyright © 2018 Tepo Labs. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    
    var emojis = ["😀", "🎃", "👍", "🦑", "🌊", "📷", "📺"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
   // override func numberOfSections(in tableView: UITableView) -> Int {
   //     // #warning Incomplete implementation, return the number of sections
   //     return 0
   // }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
 
    
    
    // use mySegue1 to go to the next view Controller
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let emojiToPass = emojis[indexPath.row]
        
        //sender passes data to prepare function.  changed nil to "mystufftopass"
        performSegue(withIdentifier: "mySegue1", sender: emojiToPass)
    }
    
    
    //called before we jump to the next view controller.  set up data passing here.
    // sender passes data between prepare for segue and performSegue.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiVC = segue.destination as! EmojiViewController
        emojiVC.passedEmoji = sender as! String
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
