//
//  InterfaceController.swift
//  Wake up if I sleep (watch OS) Extension
//
//  Created by 平岡　和佳子 on 2017/06/04.
//  Copyright © 2017年 平岡　和佳子. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController{
    
    @IBOutlet weak var watchswitch: WKInterfaceSwitch!
    var stationary=false
    typealias SystemSoundID = UInt32
    typealias TimeInterval = Double
    let session = WCSession.default()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
                
        // Configure interface objects here.
        processApplicationContext()
        
        session.delegate = self as? WCSessionDelegate
        session.activate()
        watchswitch.setOn(true)
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        let session = WCSession.default()
        session.delegate = self as? WCSessionDelegate
        session.activate()
        
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    
    
    @IBAction func watchswitch(value:Bool){func startActivityUpdates()
        {if stationary==true
        {func AudioServicesPlaySystemSoundWithCompletion(_ inSystemSoundID:SystemSoundID=1000,
                                                         _ inCompletionBlock: (() -> Void)?){}
            }
        }
    
    }
    
    
    func session(session: WCSession, didReceiveApplicationContext applicationContext: [String : AnyObject]) {
        DispatchQueue.main.async() {
            self.processApplicationContext()
        }
    }
    
    
    func processApplicationContext() {
        if let iPhoneContext = session.receivedApplicationContext as? [String : Bool] {
            
            if iPhoneContext["switchStatus"] == true {
                func switchAction(value: Bool){}
                //
            }
            else {func switchAction(value: Bool)
            {}
                //
            }
            }
        }
    }




