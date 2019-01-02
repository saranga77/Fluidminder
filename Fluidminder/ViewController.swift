//
//  ViewController.swift
//  Fluidminder
//
//  Created by saranga geeganage on 12/20/18.
//  Copyright © 2018 saranga geeganage. All rights reserved.
//

import UIKit
import BAFluidView

class ViewController: UIViewController {
    @IBOutlet var manView: BAFluidView!
    let mask = UIImageView(image:#imageLiteral(resourceName: "BOTTELS_0005_2000px-Human_outline"))
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mask.frame = manView.bounds
        mask.contentMode = .scaleAspectFit
        
        manView.mask = mask
        
        
        manView.alpha = 0.9
        manView.fillColor = UIColor.blue
        manView.keepStationary()
        manView.fill(to: 0.6)
        manView.amplitudeIncrement = 100
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

