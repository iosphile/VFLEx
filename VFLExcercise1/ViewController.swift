//
//  ViewController.swift
//  VFLExcercise1
//
//  Created by Rajesh Kommana on 22/10/17.
//  Copyright © 2017 Rajesh Kommana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainBanner = UIView()
        mainBanner.backgroundColor = UIColor.purple
        mainBanner.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(mainBanner)
        
        let thumb1 = UIView()
        thumb1.backgroundColor = UIColor.red
        thumb1.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(thumb1)
        
        let thumb2 = UIView()
        thumb2.backgroundColor = UIColor.brown
        thumb2.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(thumb2)
        
        let thumb3 = UIView()
        thumb3.backgroundColor = UIColor.black
        thumb3.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(thumb3)
        
        let thumb4 = UIView()
        thumb4.backgroundColor = UIColor.blue
        thumb4.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(thumb4)
        
        
        let height = view.frame.size.width * 9.0 / 16.0
        let viewsDict = ["mainBanner":mainBanner,"thumb1":thumb1,"thumb2":thumb2,"thumb3":thumb3,"thumb4":thumb4]
        let metricsDict = ["mainBannerHeight": height,"thumbHeight": 75]
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[mainBanner(mainBannerHeight)]-5-[thumb1(thumbHeight)]-5-[thumb4(thumbHeight)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDict, views: viewsDict))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[mainBanner]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDict, views: viewsDict))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[thumb1]-5-[thumb2(==thumb1)]-5-[thumb3(==thumb1)]-|", options: NSLayoutFormatOptions.alignAllCenterY, metrics: metricsDict, views: viewsDict))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[thumb4]-|", options: NSLayoutFormatOptions.alignAllCenterY, metrics: metricsDict, views: viewsDict))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[thumb2(thumbHeight)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDict, views: viewsDict))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[thumb3(thumbHeight)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDict, views: viewsDict))
        //self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[thumb4(thumbHeight)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDict, views: viewsDict))
        
        
        
        
    }



}

