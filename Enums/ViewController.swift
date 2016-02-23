//
//  ViewController.swift
//  Enums
//
//  Created by Yogesh Kumar on 23/02/16.
//  Copyright © 2016 itsyogesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var carImage: UIImageView!
    
    enum Cars: Int {
        case hatchback = 0
        case american = 1
        case sports = 2
        case sedan = 3
    }
    
    var carOfChoice: Cars!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func carBtnPressed(sender: UIButton!) {
        if(sender.selected){
            sender.selected = false
        } else {
            sender.selected = true
        }
        
        if sender.tag == Cars.hatchback.rawValue {
            carImage.image = UIImage(named: "hatchback-car")
            self.viewDidLoad()
        }
        
        else if sender.tag == Cars.american.rawValue {
            carImage.image = UIImage(named: "muscle-car")
            self.viewDidLoad()
        }
        
        else if sender.tag == Cars.sports.rawValue {
            carImage.image = UIImage(named: "sports-car")
            self.viewDidLoad()
        }
        
        else {
            carImage.image = UIImage(named: "sedan-car")
            self.viewDidLoad()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

