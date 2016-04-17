//
//  Music.swift
//  AxAttack
//
//  Created by Tushar Sharma on 4/17/16.
//  Copyright © 2016 Tushar Sharma. All rights reserved.
//
import WatchKit
import Foundation

class Music: WKInterfaceController {
    
    @IBOutlet var player: WKInterfaceMovie!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let url = NSBundle.mainBundle().URLForResource("calm", withExtension: "mp3")
        self.player.setMovieURL(url!)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}
