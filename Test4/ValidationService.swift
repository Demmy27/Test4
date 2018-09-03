//
//  ValidationService.swift
//  Test4
//
//  Created by Шишов Дмитрий (Shishov_DR) on 03.09.2018.
//  Copyright © 2018 Шишов Дмитрий (Shishov_DR). All rights reserved.
//

import Foundation

func isValidLogin(login:String) -> Bool {
    let loginRegEx = "[A-Za-z]+[-a-z0-9.]{2,30}"
    
    let loginTest = NSPredicate(format:"SELF MATCHES %@", loginRegEx)
    return loginTest.evaluate(with: login)
}
