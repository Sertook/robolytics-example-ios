//
//  FirstViewController.swift
//  Robolytics Example iOS
//
//  Created by Florian Paillard on 11/06/2019.
//  Copyright © 2019 Florian Paillard. All rights reserved.
//

import UIKit
import Robolytics

class FirstViewController: UIViewController, RobolyticsDataExtractor {
    
    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
        Robolytics.track("button_event", type: "action", data: ["mykey" : "value"])
        
    }
    func robolyticsDataExtract(eventBuilder: EventBuilder, name: String) {
        eventBuilder.extract(key: "Screen", data: "FirstView")
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

