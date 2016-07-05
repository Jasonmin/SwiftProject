//
//  JYQCAVC.swift
//  LJYQ
//
//  Created by zhouqiang on 16/7/5.
//  Copyright © 2016年 zhou. All rights reserved.
//

import UIKit

class JYQCAVC: UIViewController {

    var topLayer:CALayer?
    var bottomLayer:CALayer?
    var leftLayer:CALayer?
    var rightLayer:CALayer?
    var frontLayer:CALayer?
    var backLayer:CALayer?
    
    let kSize:CGFloat = 160.0
    let kPanScale:CGFloat = 0.05
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var transofrm = CATransform3D()
        transofrm = CATransform3DMakeTranslation(0, -kSize/2, 0)
        transofrm = CATransform3DRotate(transofrm, CGFloat(M_PI_2), 1.0, 0, 0)
        self.topLayer = self.layerWithColor(UIColor.redColor(), transform: transofrm)
        
        transofrm = CATransform3DMakeTranslation(0, kSize/2, 0)
        transofrm = CATransform3DRotate(transofrm, CGFloat(M_PI_2), 1.0, 0, 0)
        self.bottomLayer = self.layerWithColor(UIColor.greenColor(), transform: transofrm)
        
        transofrm = CATransform3DMakeTranslation(kSize/2, 0, 0)
        transofrm = CATransform3DRotate(transofrm, CGFloat(M_PI_2), 0, 1, 0)
        self.rightLayer = self.layerWithColor(UIColor.blueColor(), transform: transofrm)
        
        transofrm = CATransform3DMakeTranslation(-kSize/2, 0, 0)
        transofrm = CATransform3DRotate(transofrm, CGFloat(M_PI_2), 0, 1, 0)
        self.leftLayer = self.layerWithColor(UIColor.cyanColor(), transform: transofrm)
        
        transofrm = CATransform3DMakeTranslation(0, 0, -kSize/2)
        transofrm = CATransform3DRotate(transofrm, CGFloat(M_PI_2), 0, 0, 0)
        self.frontLayer = self.layerWithColor(UIColor.yellowColor(), transform: transofrm)
        
        transofrm = CATransform3DMakeTranslation(0, 0, kSize/2)
        transofrm = CATransform3DRotate(transofrm, CGFloat(M_PI_2), 0, 0, 0)
        self.frontLayer = self.layerWithColor(UIColor.magentaColor(), transform: transofrm)
        
        self.view.layer.sublayerTransform = makePerspectiveTransform()
        let gestureRec = UIPanGestureRecognizer(target: self, action: #selector(JYQCAVC.pan(_:)))
        self.view.addGestureRecognizer(gestureRec)
    }
    
    func pan(recognizer:UIPanGestureRecognizer) {
        
        let translation = recognizer.translationInView(self.view)
        var transform = makePerspectiveTransform()
        transform = CATransform3DRotate(transform, kPanScale*translation.x, 0, 1, 0)
        transform = CATransform3DRotate(transform, -kPanScale*translation.y, 1, 0, 0)
        self.view.layer.sublayerTransform = transform
    }
    
    func makePerspectiveTransform() -> CATransform3D{
        var perspective = CATransform3DIdentity
        perspective.m34 = -1/2000.0
        return perspective
    }
    
    func layerWithColor(color:UIColor, transform:CATransform3D) -> CALayer {
        let layer = CALayer()
        layer.backgroundColor = color.CGColor
        layer.bounds = CGRect(x: 0, y: 0, width: kSize, height: kSize)
        layer.position = self.view.center
        layer.transform = transform
        self.view.layer.addSublayer(layer)
        return layer
    }
}
