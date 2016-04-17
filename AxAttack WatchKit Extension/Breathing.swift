//
//  Breathing.swift
//  AxAttack
//
//  Created by Tushar Sharma on 4/17/16.
//  Copyright © 2016 Tushar Sharma. All rights reserved.
//
import WatchKit
import Foundation
class  Breathing: WKInterfaceController {
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        run()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        intervalTimer.invalidate()
    }
    
    var intervalTimer = NSTimer()
    @IBOutlet var timer: WKInterfaceTimer!
    @IBOutlet var label: WKInterfaceLabel!
    var breathing  = true
    
    @IBAction func switchBreath(value: Bool) {
        //chages between walks and runs on the display
        if value{
            label.setText("Breathe in")
            WKInterfaceDevice.currentDevice().playHaptic(.Notification)
            intervalTimer.invalidate()
            run()
        }else{
            label.setText("Breathe out")
            WKInterfaceDevice.currentDevice().playHaptic(.Notification)
            intervalTimer.invalidate()
            run()
        }
    }
    
    func run(){
        let interval:NSTimeInterval = 7.0
       timer.start()
        if intervalTimer.valid{intervalTimer.invalidate()} //shut off timer if on
        intervalTimer = NSTimer.scheduledTimerWithTimeInterval(interval ,
            target: self,  //Object to target when done
            selector: "timerDidEnd:", //Method on the object
            userInfo: nil, //Extra user info, most likely a dictionary
            repeats: false) //Repeat of not

    }
    func timerDidEnd(timer:NSTimer){
        //When we reach end of an workout interval, switch workout type
        breathing = !breathing
        switchBreath(breathing)
        
    }
    
    func reset(){
        timer.start()
    }
    
    
}