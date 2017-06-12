//
//  ViewController.swift
//  Wake up if I sleep
//
//  Created by 平岡　和佳子 on 2017/06/04.
//  Copyright © 2017年 平岡　和佳子. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController{
    
    @IBOutlet weak var 起こしますか: UILabel!
    
    @IBOutlet weak var iphoneswitch: UISwitch!
    
    var session: WCSession?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (WCSession.isSupported()) {
            let session = WCSession.default()
            session.delegate = self as? WCSessionDelegate
            session.activate()
        }
    }
        func processApplicationContext() {
            if let iPhoneContext = session?.applicationContext as? [String : Bool] {
                if iPhoneContext["switchStatus"] == true {
                    iphoneswitch.isOn = true
                } else {
                    iphoneswitch.isOn = false
                }
            }
    }

    @IBAction func switchValueChanged(sender: UISwitch) {
        if let validSession = session {
            let iPhoneAppContext = ["switchStatus": sender.isOn]
            
            do {
                try validSession.updateApplicationContext(iPhoneAppContext)
            } catch {
                print("Something went wrong")
            }
        }
    }
    

    }


