//
//  mssg.swift
//  AxAttack
//
//  Created by Tushar Sharma on 4/17/16.
//  Copyright © 2016 Tushar Sharma. All rights reserved.
//

import UIKit
import WatchKit
import Foundation
class Mssg: WKInterfaceController{
    @IBAction func textHelp(){
        let url = NSURL(string: "sms:6099371902")
        WKExtension.sharedExtension().openSystemURL(url!)
        
    }
}