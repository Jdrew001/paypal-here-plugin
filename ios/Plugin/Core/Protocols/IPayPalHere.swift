//
//  File.swift
//  Plugin
//
//  Created by Elizabeth Harris on 9/15/20.
//  Copyright © 2020 Max Lynch. All rights reserved.
//

import Foundation
import Capacitor
import PayPalRetailSDK

protocol IPayPalHere {
    //accessToken: "access token of merchant", refreshUrl: "refresh URL to use to refresh access token after expiry", environment: "either live or sandbox")
    // define interfaces
    func initPayPalSdk()
    func initMerchant(_ call: CAPPluginCall)
    func testFunc(_ call: CAPPluginCall) -> Bool;
}
