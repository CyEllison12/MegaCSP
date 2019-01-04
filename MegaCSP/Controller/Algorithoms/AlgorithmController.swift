//
//  ViewController.swift
//  AlgorithmCyEllison
//
//  Created by Ellison, Cy on 10/23/18.
//  Copyright © 2018 Ellison, Cy. All rights reserved.
//

import UIKit

class AlgorithmController: UIViewController {

    @IBOutlet weak var algorithmText: UILabel!
    
    @IBOutlet weak var swiftImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }
    
    private func formatAlgorithm() -> Void //changes the text to be the next one
    {
        let title : String = "How to make an app in Xcode!"
        
        let stepOne : String = " Open xcode, and select ‘Create a new Xcode project’"
        let stepTwo : String = " Click ‘Single View App’"
        let stepThree : String = " Make a project name and click next, and click the folder you want to make the file in"
        let stepFour : String = " CTRL+Click AppDelegate.swift, Assets.xcassets, Info.plist, and right click one of them and click ‘New Group from selection’ and name it Resources"
        let stepFive : String = " Do the same as step4, but with ViewController.swift and name it Controller"
        let stepSix : String = " Do the same as step4, but with Main.storyboard, LaunchScreen.storyboard and name it View"
        let stepSeven : String = " Create a new file that with a name that explains what it does, then do the same as step4, but with the file you just created and name it Model"
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet : String = "🌚"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep: NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

