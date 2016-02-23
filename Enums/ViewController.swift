//
//  ViewController.swift
//  Enums
//
//  Created by Yogesh Kumar on 23/02/16.
//  Copyright © 2016 itsyogesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Cars: String {
        case bmw = "BMW"
        case honda = "Honda"
        case tesla = "Tesla"
        case subaru = "Subaru"
    }
    
    var carOfChoice: Cars!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        carOfChoice = Cars.tesla
        print(carOfChoice)
    }
    
    @IBAction func carBtnPressed(sender: UIButton!) {
        if(sender.selected){
            sender.selected = false
        } else {
            sender.selected = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

