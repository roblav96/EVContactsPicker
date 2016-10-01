//
//  EVContact.swift
//  Pods
//
//  Created by Edward Valentini on 8/29/15.
//
//

import UIKit

//public func ==(lhs: EVContactProtocol, rhs: EVContactProtocol) -> Bool {
//    return lhs.identifier == rhs.identifier
//}

@objc public protocol EVContactProtocol {
    var identifier : String { get set }
    var firstName : String? { get set }
    var lastName : String? { get set }
    var phone : String? { get set }
    var email : String? { get set }
    var image : UIImage? { get set }
    var selected : Bool { get set }
    var date : Date? { get set }
    var dateUpdated : Date? { get set }
    
    func fullname() -> String?
}

@objc open class EVContact: NSObject, EVContactProtocol {
    open func fullname() -> String? {
        if let firstName = self.firstName, let lastName = self.lastName {
            return String(firstName + " " + lastName)
        }
        if let firstName = self.firstName {
            return firstName
        }
        
        if let lastName = self.lastName {
            return lastName
        }
        return nil
    }
    
    open var identifier: String
    open var dateUpdated: Date? = nil
    open var date: Date? = nil
    open var selected: Bool = false
    open var image: UIImage? = nil
    open var email: String? = nil
    open var phone: String? = nil
    open var lastName: String? = nil
    open var firstName: String? = nil
    
    public init(identifier: String) {
        self.identifier = identifier
    }
}
