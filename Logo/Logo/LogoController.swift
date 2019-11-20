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
            let circleDiameter: CGFloat = gridSquare * 4
            let smallSquareSize: CGFloat = gridSquare * 2
            let largeRectangleSize: CGFloat = gridSquare * 5
            
        // Blue Short Oval
            let smallBlueCircle = CGRect(x: gridSquare * 5, y: 0, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: smallBlueCircle, withColor: blueColor)
            
            let smallBlueSquare = CGRect(x: gridSquare * 7, y: gridSquare * 2, width: smallSquareSize, height: smallSquareSize)
            addRectangle(addRect: smallBlueSquare, withColor: blueColor)
        
        // Blue Long Oval
            let longBlueCircleLeft = CGRect(x: 0, y: gridSquare * 5, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: longBlueCircleLeft, withColor: blueColor)
            
            let longBlueCircleRight = CGRect(x: gridSquare * 5, y: gridSquare * 5, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: longBlueCircleRight, withColor: blueColor)
            
            let longBlueRectangle = CGRect(x: gridSquare * 2, y: gridSquare * 5, width: largeRectangleSize, height: smallSquareSize * 2)
            addRectangle(addRect: longBlueRectangle, withColor: blueColor)
        
        // Green Long Oval
            let longGreenCircleTop = CGRect(x: gridSquare * 10, y: 0, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: longGreenCircleTop, withColor: greenColor)
            
            let longGreenCircleBottom = CGRect(x: gridSquare * 10, y: gridSquare * 5, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: longGreenCircleBottom, withColor: greenColor)
            
            let longGreenRectangle = CGRect(x: gridSquare * 10, y: gridSquare * 2, width: smallSquareSize * 2, height: largeRectangleSize)
            addRectangle(addRect: longGreenRectangle, withColor: greenColor)
        
        // Green Short Oval
            let smallGreenCircle = CGRect(x: gridSquare * 15, y: gridSquare * 5, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: smallGreenCircle, withColor: greenColor)
            
            let smallGreenSquare = CGRect(x: gridSquare * 15, y: gridSquare * 7, width: smallSquareSize, height: smallSquareSize)
            addRectangle(addRect: smallGreenSquare, withColor: greenColor)
        
        // Yellow Long Oval
            let longYellowCircleLeft = CGRect(x: gridSquare * 10, y: gridSquare * 10, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: longYellowCircleLeft, withColor: yellowColor)
            
            let longYellowCircleRight = CGRect(x: gridSquare * 15, y: gridSquare * 10, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: longYellowCircleRight, withColor: yellowColor)
            
            let longYellowRectangle = CGRect(x: gridSquare * 12, y: gridSquare * 10, width: largeRectangleSize, height: smallSquareSize * 2)
            addRectangle(addRect: longYellowRectangle, withColor: yellowColor)
        
        // Yellow Short Oval
            let smallYellowCircle = CGRect(x: gridSquare * 10, y: gridSquare * 15, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: smallYellowCircle, withColor: yellowColor)
            
            let smallYellowSquare = CGRect(x: gridSquare * 10, y: gridSquare * 15, width: smallSquareSize, height: smallSquareSize)
            addRectangle(addRect: smallYellowSquare, withColor: yellowColor)
        
        // Red Long Oval
            let longRedCircleTop = CGRect(x: gridSquare * 5, y: gridSquare * 10, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: longRedCircleTop, withColor: redColor)
            
            let longRedCircleBottom = CGRect(x: gridSquare * 5, y: gridSquare * 15, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: longRedCircleBottom, withColor: redColor)
            
            let longRedRectangle = CGRect(x: gridSquare * 5, y: gridSquare * 12, width: smallSquareSize * 2, height: largeRectangleSize)
            addRectangle(addRect: longRedRectangle, withColor: redColor)
        
        // Red Short Oval
            let smallRedCircle = CGRect(x: 0, y: gridSquare * 10, width: circleDiameter, height: circleDiameter)
            addCircle(addCir: smallRedCircle, withColor: redColor)
            
            let smallRedSquare = CGRect(x: gridSquare * 2, y: gridSquare * 10, width: smallSquareSize, height: smallSquareSize)
            addRectangle(addRect: smallRedSquare, withColor: redColor)
        
        }
    }
    
    func addRectangle(addRect rectangle: CGRect, withColor color: UIColor) {
        if let context = UIGraphicsGetCurrentContext() {
            context.addRect(rectangle)
            context.setFillColor(color.cgColor)
            context.fillPath()
        }
    }
    
    func addCircle(addCir circle: CGRect, withColor color: UIColor) {
        if let context = UIGraphicsGetCurrentContext() {
            context.addEllipse(in: circle)
            context.setFillColor(color.cgColor)
            context.fillPath()
        }
    }
    
    @IBAction func animateLogo(_ sender: UIButton) {
        self.alpha = 0.0
        let animationBlock = {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25) {
                self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            }
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.30) {
                UIView.animate(withDuration: 0.5) {
                    self.alpha = 1.0
                }
            }
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25) {
                self.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                self.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.25) {
                self.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 1.5)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2)
            }
        }
            UIView.animateKeyframes(withDuration: 5, delay: 0, options: [], animations: animationBlock, completion: nil)
    }
    
}
