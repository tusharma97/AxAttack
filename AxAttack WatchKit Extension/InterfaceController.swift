//
//  InterfaceController.swift
//  AxAttack WatchKit Extension
//
//  Created by Tushar Sharma on 4/16/16.
//  Copyright © 2016 Tushar Sharma. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func onMenuPicTap() {
        self.pushControllerWithName("Pictures",context: nil)
        
    }
    @IBAction func onMenuMusicTap() {
        self.pushControllerWithName("Music",context: nil)
        
    }
    @IBAction func onMenuBreathTap() {
        self.pushControllerWithName("Breath",context: nil)
        
    }
    
    @IBAction func onMenuHelpTap() {
     self.pushControllerWithName("Help",context: nil)
    }

    
}
