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
    var passedEmoji = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bigEmoji.text = passedEmoji
        
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
