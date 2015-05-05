//
//  ViewController.swift
//  ColorMath
//
//  Created by Brendan McDonald on 5/5/15.
//  Copyright (c) 2015 Dangerous Design LLC. All rights reserved.
//
// DONE: 
/*
    Create Red Green and Blue sliders and labels
    Add a supplemental UI View for displaying the color outcome
    Connect the Sliders to their outlets
*/

// TODO: Orient those UI elements on the storyboard so they render in the expected locations
// TODO: Create the function which dictates the color in the UIView
// TODO: Connect the function to the output of the UIView
// TODO: Connect the sliders to trigger the update function

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorMath: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorInRGB: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateColor(sender: AnyObject){
        
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        colorMath.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
        var printoutput = (r*255, g*255, b*255)
        
        colorInRGB.text = "The color is \(printoutput)"
        
        println("Background is \(colorMath.backgroundColor)")
        
    }

}

