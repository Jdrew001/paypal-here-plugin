//
//  PayPalHereService.swift
//  Plugin
//
//  Created by Elizabeth Harris on 9/15/20.
//  Copyright © 2020 Max Lynch. All rights reserved.
//

import Foundation
import Capacitor
import PayPalRetailSDK


public class PayPalHereService : IPayPalHere {

    func initPayPalSdk() {
        PayPalRetailSDK.initializeSDK()
    }
    
    func initMerchant(_ call: CAPPluginCall) {
        let accessToken = call.getString(PayPalConstants.ACCESS_TOKEN) ?? ""
        let refreshUrl = call.getString(PayPalConstants.REFRESH_URL) ?? ""
        let environment = call.getString(PayPalConstants.ENVIRONMENT) ?? ""
        
        let sdkCreds = SdkCredential.init(accessToken: accessToken, refreshUrl: refreshUrl, environment: environment)
        PayPalRetailSDK.initializeMerchant(withCredentials: sdkCreds) { (error, success) in
            if let err = error {
                call.error(err.message!, nil, ["error": err])
            } else if let res = success {
                call.success(["result": res])
            }
        }
    }
    
    func testFunc(_ call: CAPPluginCall) -> Bool {
        return true;
    }
}
