//
//  EVContactBubbleDelegate.swift
//  Pods
//
//  Created by Edward Valentini on 8/29/15.
//
//

import Foundation

@available(iOS 9.0, *)
@objc protocol EVContactBubbleDelegate : NSObjectProtocol {
    @objc optional func contactBubbleWasSelected(_ contactBubble: EVContactBubble) -> Void
    @objc optional func contactBubbleWasUnSelected(_ contactBubble: EVContactBubble) -> Void
    @objc optional func contactBubbleShouldBeRemoved(_ contactBubble: EVContactBubble) -> Void
}
