//
//  ContactModel.swift
//  Transmister
//
//  Created by Louis Aeilot on 2020/8/21.
//  Copyright © 2020 Louis Studio. All rights reserved.
//

import Foundation
import Contacts

struct ContactModel {
    var contactArray = Array<Contact>()
    
    struct Contact {
        var firstName: String
        var lastName: String
        var nickName: String
        var gravatar: String
        var servers: Array<Server>
        var contact: CNContact
    }
}
