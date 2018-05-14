//
//  CustomNavigationBar.swift
//  Maybach
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

import UIKit

/**
 Wrapper around ``UINavigationBar``.
 Makes this controll fully customisable.
 Access to ``UINavigationBar`` should be done only by using class implemented in this class.
 If something is missing, add it.
 */
@IBDesignable
public class CustomNavigationBar: UINavigationBar {
    
    ///Setter and getter for ``leftBarButton`` color.
    @IBInspectable public var leftBarButtonColor: UIColor! {
        get {
            return leftBarButton?.tintColor ?? UIColor.clear
        }
        set {
            leftBarButton?.tintColor = newValue
        }
    }
    
    ///Setter and getter for ``leftBarButton`` image.
    @IBInspectable public var leftBarButtonImage: UIImage! {
        get {
            return leftBarButton?.image ?? UIImage()
        }
        set {
            leftBarButton?.image = newValue
        }
    }
    
    ///Setter and getter for ``rightBarButton`` color.
    @IBInspectable public var rightBarButtonColor: UIColor! {
        get {
            return rightBarButton?.tintColor ?? UIColor.clear
        }
        set {
            rightBarButton?.tintColor = newValue
        }
    }
   
    ///Setter and getter for ``rightBarButton`` image.
    @IBInspectable public var rightBarButtonImage: UIImage! {
        get {
            return rightBarButton?.image ?? UIImage()
        }
        set {
            rightBarButton?.image = newValue
        }
    }
  
    ///Setter and getter for ``title``.
    @IBInspectable public var title: String! {
        get {
            return topItem?.title ?? ""
        }
        set {
            topItem?.title = newValue
        }
    }
    
    ///Getter for leftBarButton.
    public var leftBarButton: UIBarButtonItem?
    
    ///Completion block triggered when leftBarButton is clicked.
    public var onLeftBarButtonClick: (() -> Void)?
    
    ///Getter for rightBarButton.
    public var rightBarButton: UIBarButtonItem?
    
    ///Completion block triggered when rightBarButton is clicked.
    public var onRightBarButtonClick: (() -> Void)?
    
    ///Required initialiser for xib instancing.
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        onInit()
    }
    
    ///Initialiser for instantioning from code. Use this when creating instance from code.
    override public init(frame: CGRect) {
        super.init(frame: frame)
        onInit()
    }
    
    private func onInit() {
        titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        setBackgroundImage(UIImage(), for: .default)
        shadowImage = UIImage()
        isTranslucent = true
        setTitle()
        setButtons()
    }
    
    private func setTitle() {
        let titleItem = UINavigationItem(title: "")
        setItems([titleItem], animated: false)
    }
    
    private func setButtons() {
        leftBarButton = UIBarButtonItem(image: leftBarButtonImage, style: .plain,
                                        target: self, action: #selector(onLeftBarButtonClickEvent))
        topItem?.setLeftBarButton(leftBarButton, animated: false)
        rightBarButton = UIBarButtonItem(image: rightBarButtonImage, style: .plain,
                                         target: self, action: #selector(onRightBarButtonClickEvent))
        topItem?.setRightBarButton(rightBarButton, animated: false)
    }
    
    @objc func onLeftBarButtonClickEvent() {
        onLeftBarButtonClick?()
    }
    
    @objc func onRightBarButtonClickEvent() {
        onRightBarButtonClick?()
    }
}
