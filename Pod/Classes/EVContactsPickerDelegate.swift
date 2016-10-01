//
//  EVContactsPickerDelegate.swift
//  Pods
//
//  Created by Edward Valentini on 9/19/15.
//
//

import Foundation

@objc public protocol EVContactsPickerDelegate  {
    @objc optional func didChooseContacts(_ contacts: [EVContactProtocol]? ) -> Void
    @objc optional func shouldShowContact(_ contact: EVContactProtocol) -> Bool
}

extension EVContactsPickerDelegate {
    public func shouldShowContact(_ contact: EVContactProtocol) -> Bool {
        return true
    }
}
