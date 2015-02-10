//
//  ViewController.swift
//  slotMachine
//
//  Created by Tyler Tessmann on 2/10/15.
//  Copyright (c) 2015 tylerOtto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstContainer: UIView!
    var secondContainer: UIView!
    var thirdContainer: UIView!
    var fourthContainer: UIView!
    var titleLabel: UILabel!
    
    let kMarginForView:CGFloat = 10.0
    let kSixth:CGFloat = 1.0/6.0
    
    let kNumberOfContainers = 3
    let kNumberOfSlots = 3
    let kThird:CGFloat = 1.0/3.0
    let kMarginForSlot:CGFloat = 2.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupContainerView()
        setupFirstContainer(self.firstContainer)
        setupSecondContainer(self.secondContainer)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupContainerView() {
        self.firstContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: self.view.bounds.origin.y , width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
        self.firstContainer.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.firstContainer)
        
        self.secondContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * (3 * kSixth)))
        self.secondContainer.backgroundColor = UIColor(red:0.0, green: 0.0, blue:0.0, alpha:1.0)
        self.view.addSubview(self.secondContainer)
        
        self.thirdContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height + secondContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
        self.thirdContainer.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(self.thirdContainer)
        
        self.fourthContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height + secondContainer.frame.height + thirdContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
        self.fourthContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.fourthContainer)
    }
    
    func setupFirstContainer(containerView: UIView) {
        self.titleLabel = UILabel()
        self.titleLabel.text = "Super Slots"
        self.titleLabel.textColor = UIColor.yellowColor()
        self.titleLabel.font = UIFont(name: "MarkerFelt-Wide", size: 40)
        self.titleLabel.sizeToFit()
        self.titleLabel.center = containerView.center
        containerView.addSubview(self.titleLabel)
    }
    
    func setupSecondContainer(containerView: UIView) {
        for var containerNumber = 0; containerNumber < kNumberOfContainers; ++containerNumber {
            
            for var slotNumber = 0; slotNumber < kNumberOfSlots; ++slotNumber {
                var slotImageView = UIImageView()
                slotImageView.backgroundColor = UIColor.yellowColor()
                slotImageView.frame = CGRect(
                    x: containerView.bounds.origin.x + (containerView.bounds.size.width * CGFloat(containerNumber) * kThird),
                    y: containerView.bounds.origin.y + (containerView.bounds.size.height * CGFloat(slotNumber) * kThird),
                    width: containerView.bounds.width * kThird - kMarginForSlot,
                    height: containerView.bounds.height * kThird - kMarginForSlot)
                
                var slotLabel = UILabel()
                slotLabel.text = "C:\(containerNumber) , S: \(slotNumber) "
                slotLabel.textColor = UIColor.redColor()
                slotLabel.sizeToFit()
                slotLabel.center.x = CGFloat(slotImageView.bounds.width / 2.0);
                slotLabel.center.y = CGFloat(slotImageView.bounds.height / 2.0);
                slotImageView.addSubview(slotLabel)
                containerView.addSubview(slotImageView)
            }
        
        }
    
    }
    


}

