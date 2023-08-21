//
//  UIView+Extensions.swift
//  BookshelfExplorer
//
//  Created by Vikram Kunwar on 21/08/23.
//

import UIKit

extension UIView{
    
    @IBInspectable var cornerRadius: CGFloat {
        get {return cornerRadius}
        set{
            self.layer.cornerRadius = newValue
        }
        
        
        
        
    }
    
    @IBInspectable var shadow: CGFloat {
        get {return shadow}
        set{
            self.layer.cornerRadius = newValue
        }
        
        
        
        
    }
}
