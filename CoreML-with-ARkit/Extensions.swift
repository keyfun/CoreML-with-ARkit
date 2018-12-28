//
//  Extensions.swift
//  CoreML-with-ARkit
//
//  Created by Key Hui on 12/29/18.
//  Copyright © 2018 keyfun. All rights reserved.
//

import Foundation
import ARKit

// Convert device orientation to image orientation for use by Vision analysis.
extension CGImagePropertyOrientation {
    init(_ deviceOrientation: UIDeviceOrientation) {
        switch deviceOrientation {
        case .portraitUpsideDown: self = .left
        case .landscapeLeft: self = .up
        case .landscapeRight: self = .down
        default: self = .right
        }
    }
}
