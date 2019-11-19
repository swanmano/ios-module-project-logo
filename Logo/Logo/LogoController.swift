//
//  LogoController.swift
//  Logo
//
//  Created by Craig Swanson on 11/18/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    
    // MARK: - Properties
    
    // set the colors of the logo using RGB values
    private let blueColor = UIColor(displayP3Red: CGFloat(54/255.0), green: CGFloat(197/255.0), blue: CGFloat(240/255.0), alpha: CGFloat(1.0))
    private let greenColor = UIColor(displayP3Red: CGFloat(46/255.0), green: CGFloat(182/255.0), blue: CGFloat(125/255.0), alpha: CGFloat(1.0))
    private let yellowColor = UIColor(displayP3Red: CGFloat(236/255.0), green: CGFloat(178/255.0), blue: CGFloat(46/255.0), alpha: CGFloat(1.0))
    private let redColor = UIColor(displayP3Red: CGFloat(224/255.0), green: CGFloat(30/255.0), blue: CGFloat(90/255.0), alpha: CGFloat(1.0))
    
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    
    // MARK: - Draw Logo Elements
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            // set the relative size values of the 19x19 grid in which to build the logo
            let gridSize: CGFloat = rect.size.width
            let gridSquare: CGFloat = gridSize / 19
            
            // set the relative size values of the circles and squares within the grid
            let circleRadius: CGFloat = gridSquare * 2
            let smallSquareSize: CGFloat = gridSquare * 2
            let largeRectangleSize: CGFloat = gridSquare * 5
            
        // Blue Short Oval
            let smallBlueCircle = CGRect(x: gridSquare * 5, y: 0, width: circleRadius * 2, height: circleRadius * 2)
            context.addEllipse(in: smallBlueCircle)
            context.setFillColor(blueColor.cgColor)
            context.fillPath()
            
            let smallBlueSquare = CGRect(x: gridSquare * 7, y: gridSquare * 2, width: smallSquareSize, height: smallSquareSize)
            context.addRect(smallBlueSquare)
            context.setFillColor(blueColor.cgColor)
            context.fillPath()
        
        // Blue Long Oval
            let longBlueCircleLeft = CGRect(x: 0, y: gridSquare * 5, width: circleRadius * 2, height: circleRadius * 2)
            context.addEllipse(in: longBlueCircleLeft)
            context.setFillColor(blueColor.cgColor)
            context.fillPath()
            
            let longBlueCircleRight = CGRect(x: gridSquare * 5, y: gridSquare * 5, width: circleRadius * 2, height: circleRadius * 2)
            context.addEllipse(in: longBlueCircleRight)
            context.setFillColor(blueColor.cgColor)
            context.fillPath()
            
            let longBlueRectangle = CGRect(x: gridSquare * 2, y: gridSquare * 5, width: largeRectangleSize, height: smallSquareSize * 2)
            context.addRect(longBlueRectangle)
            context.setFillColor(blueColor.cgColor)
            context.fillPath()
        
        // Green Long Oval
            let longGreenCircleTop = CGRect(x: gridSquare * 10, y: 0, width: circleRadius * 2, height: circleRadius * 2)
            context.addEllipse(in: longGreenCircleTop)
            context.setFillColor(greenColor.cgColor)
            context.fillPath()
            
            let longGreenCircleBottom = CGRect(x: gridSquare * 10, y: gridSquare * 5, width: circleRadius * 2, height: circleRadius * 2)
            context.addEllipse(in: longGreenCircleBottom)
            context.setFillColor(greenColor.cgColor)
            context.fillPath()
            
            let longGreenRectangle = CGRect(x: gridSquare * 10, y: gridSquare * 2, width: smallSquareSize * 2, height: largeRectangleSize)
            context.addRect(longGreenRectangle)
            context.setFillColor(greenColor.cgColor)
            context.fillPath()
        
        // Green Short Oval
            let smallGreenCircle = CGRect(x: gridSquare * 15, y: gridSquare * 5, width: circleRadius * 2, height: circleRadius * 2)
            context.addEllipse(in: smallGreenCircle)
            context.setFillColor(greenColor.cgColor)
            context.fillPath()
            
            let smallGreenSquare = CGRect(x: gridSquare * 15, y: gridSquare * 7, width: smallSquareSize, height: smallSquareSize)
            context.addRect(smallGreenSquare)
            context.setFillColor(greenColor.cgColor)
            context.fillPath()
        
        // Yellow Long Oval
        
        // Yellow Short Oval
        
        // Red Long Oval
        
        // Red Short Oval
        
        }
    }
    
}

//  make the logo a percentage of the screen
//  make the logo elements a percentage of the overall logo size
//  make the padding between the elements a percentage of the elements
