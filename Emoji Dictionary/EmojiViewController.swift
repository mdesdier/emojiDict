//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by tester on 11/8/18.
//  Copyright © 2018 Tepo Labs. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {

    //linked from label on view controller
    @IBOutlet weak var bigEmoji: UILabel!
    @IBOutlet weak var bigEmojiDescription: UILabel!
    @IBOutlet weak var bigEmojiCategory: UILabel!
    @IBOutlet weak var bigEmojiReleaseYear: UILabel!
    
    var passedEmoji = Emoji()  //will be passed an emoji object, not a string
    
   // var descriptionDict:[String:String] = ["😀":"Smiley face", "🎃":"The Pumpkin", "👍":"Thumbs up", "🦑":"The Squid", "🌊":"The Wave", "📷":"The Camera", "📺":"The TV"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set big emoji to the pased one
        bigEmoji.text = passedEmoji.theEmoji
        
        //set description based on passed emoji (no longer need dictionary)
        bigEmojiDescription.text = passedEmoji.descr
        
        bigEmojiReleaseYear.text = "Released: \(passedEmoji.releaseDate)"
        bigEmojiCategory.text = "Category: \(passedEmoji.category)"
        
        
    }
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
