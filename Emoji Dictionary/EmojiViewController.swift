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
    var passedEmoji = ""
    var descriptionDict:[String:String] = ["😀":"Smiley face", "🎃":"The Pumpkin", "👍":"Thumbs up", "🦑":"The Squid", "🌊":"The Wave", "📷":"The Camera", "📺":"The TV"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set big emoji to the pased one
        bigEmoji.text = passedEmoji
        
        //set description based on passed emoji
        bigEmojiDescription.text = descriptionDict[passedEmoji]
        
        
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
