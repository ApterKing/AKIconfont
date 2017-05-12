//
//  UIImage+Iconfont.swift
//  AKSwifty
//
//  Created by wangcong on 28/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import Foundation
import UIKit

public extension UIImage {
    
    public convenience init?(text: Iconfont, fontSize: CGFloat, imageSize: CGSize = CGSize.zero, imageColor: UIColor = UIColor.black) {
        guard let iconfont = UIFont.iconfont(ofSize: fontSize) else {
            self.init()
            return nil
        }
        var imageRect = CGRect(origin: CGPoint.zero, size: imageSize)
        if __CGSizeEqualToSize(imageSize, CGSize.zero) {
            imageRect = CGRect(origin: CGPoint.zero, size: text.rawValue.size(attributes: [NSFontAttributeName: iconfont]))
        }
        UIGraphicsBeginImageContextWithOptions(imageRect.size, false, UIScreen.main.scale)
        defer {
            UIGraphicsEndImageContext()
        }
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.center
        text.rawValue.draw(in: imageRect, withAttributes: [NSFontAttributeName : iconfont, NSParagraphStyleAttributeName: paragraphStyle, NSForegroundColorAttributeName: imageColor])
        guard let cgImage = UIGraphicsGetImageFromCurrentImageContext()?.cgImage else {
            self.init()
            return nil
        }
        self.init(cgImage: cgImage)
    }
    
}

