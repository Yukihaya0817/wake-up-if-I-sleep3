//
//  InterfaceController.swift
//  Wake up if I sleep (watch OS) Extension
//
//  Created by 平岡　和佳子 on 2017/06/04.
//  Copyright © 2017年 平岡　和佳子. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var watchswitch: WKInterfaceSwitch!
    var stationary=false
    typealias SystemSoundID = UInt32
    typealias TimeInterval = Double
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
    
    
    
    @IBAction func watchswitchChange(on:Bool)
    {
        
        func startActivityUpdates()
        {if stationary==true
        {func AudioServicesPlaySystemSoundWithCompletion(_ inSystemSoundID:SystemSoundID=1000,
                                                         _ inCompletionBlock: (() -> Void)?){}
            }
        }
        
        
        
        
    }
}



