//
//  AppDelegate.swift
//  SineWaver_Test2
//
//  Created by george on 10/02/2015.
//  Copyright (c) 2015 george. All rights reserved.
//  just some mucking around

import Cocoa



@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

   
    @IBOutlet weak var DrawingView1: DrawingView!

    @IBOutlet weak var leftSlider: NSSlider!
    
    

    @IBOutlet weak var rightSlider: NSSlider!
    
    
// action from left slider ***************************************
    
    @IBAction func leftSlidersender(sender: NSSlider) {
        
        var lSliderVal:Int = (Int(sender.doubleValue))
        println("test")
        DrawingView1.startingPoint = NSPoint(x: 0, y: (lSliderVal))
        DrawingView1.needsDisplay = true
      
    }
    
   //**************************************************************
   //**************************************************************
    
    //action from right slider*************************************
 
    @IBAction func rightSliderSender(sender: NSSlider) {
        
        var rSliderVal:Int = (Int(sender.doubleValue))
        DrawingView1.endingPoint = NSPoint(x: 500, y: (rSliderVal))
        
        
        DrawingView1.needsDisplay = true
    }
   
 //******************************************************************
 //******************************************************************
    

// main app delegate loop ******************************************
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
      
      
    
    println("inside app finished launching loop")
        
    //Initializartion for fader positions *************************
    leftSlider.integerValue = 5
    rightSlider.integerValue = 5
    DrawingView1.needsDisplay = true
    
        var TestDrawingView = DrawingView()
        TestDrawingView.DrawingViewTest()
   
    
    }  // app delegate loop

    
//*******************************************************************

    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

