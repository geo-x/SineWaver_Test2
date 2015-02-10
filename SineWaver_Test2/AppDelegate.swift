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

    @IBOutlet weak var DrawingView1: NSView!

    @IBOutlet weak var leftSlider: NSSlider!
    
    @IBAction func leftSlidersender(sender: NSSlider) {
        
        println("test")
        var x: Double = sender.doubleValue
        println("\(Int(x))")
    }
   
    func applicationDidFinishLaunching(aNotification: NSNotification) {
      
        
     DrawingView1.lockFocus()
        
        var path = NSBezierPath()
        
        var startY = Int(0)
        var endY = Int(0)
        var startPoint = NSPoint(x:0, y:(startY))
        var endingPoint = NSPoint(x:500, y:(endY))
        
//        path.moveToPoint(NSPoint(x: 0, y: 0))
//        
//        path.lineToPoint(NSPoint(x: 500, y:0))
        
        path.moveToPoint(startPoint)
        
        path.lineToPoint(endingPoint)
        
        path.stroke()
        
       DrawingView1.unlockFocus()
        
        
        
        
        
        
        
        
        
    }

    
    
    
    
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

