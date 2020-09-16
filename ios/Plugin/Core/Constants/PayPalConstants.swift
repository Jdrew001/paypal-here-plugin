//
//  PayPalConstants.swift
//  Plugin
//
//  Created by Elizabeth Harris on 9/15/20.
//  Copyright © 2020 Max Lynch. All rights reserved.
//

import Foundation


struct PayPalConstants {
    public static let ACCESS_TOKEN = "accessToken"
    public static let REFRESH_URL = "refreshUrl"
    public static let ENVIRONMENT = "environment"
    public static let SUCCESS_MESSAGE = "Successfully executed"
}

enum Environment {
    case PROD
    case SANDBOX
}
