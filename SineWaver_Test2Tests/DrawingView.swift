//
//  DrawingView.swift
//  SineWaver_Test2
//
//  Created by george on 11/02/2015.
//  Copyright (c) 2015 george. All rights reserved.
//

import Cocoa


class DrawingView: NSView {
    
    var startYValue:Int = 100
    
    var endYValue:Int = 100
    
    var startingPoint:NSPoint = NSPoint(x:0, y:0)
    var endingPoint:NSPoint = NSPoint(x:500, y:0)

    
    func DrawingViewTest(){
        println("this is a method of the DrawingView Class")
    }
    
    
    
    
    
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    println("drawrectcode")
        
        var path = NSBezierPath()
        
        
       
        
        path.moveToPoint(startingPoint)
        
        path.lineToPoint(endingPoint)
        
        path.stroke()
        
        
    }//end drawRect
    
    
    
    
    
}//end class def
