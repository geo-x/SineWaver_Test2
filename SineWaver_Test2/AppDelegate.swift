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
    
    @IBAction func leftSlidersender(sender: NSSlider) {
        
        
        var lSliderVal:Int = (Int(sender.doubleValue))
        println("test")
        DrawingView1.startingPoint = NSPoint(x: 0, y: (lSliderVal))
      
     
        DrawingView1.needsDisplay = true
        
      
    }
    
    
    
    var startY = Int(0)
    var endY = Int(0)
    
    
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
      
      
   
    
    println("inside app finished launching loop")
    leftSlider.integerValue = 0
    
    
        var TestDrawingView = DrawingView()
        TestDrawingView.DrawingViewTest()
        DrawingView1.DrawingViewTest()
        
     
        
//        DrawingView1.lockFocus()
//        
//        var path = NSBezierPath()
//        
//
//        var startPoint = NSPoint(x:0, y:(startY))
//        var endingPoint = NSPoint(x:500, y:(endY))
//        
//        path.moveToPoint(startPoint)
//        
//        path.lineToPoint(endingPoint)
//        
//        path.stroke()
//        
//        DrawingView1.unlockFocus()

        
        
        
      
    
    }// end app finished launching

    
    

    
    
    
    
    
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

