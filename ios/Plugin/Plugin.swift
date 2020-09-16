import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(PayPalHere)
public class PayPalHere: CAPPlugin {
    
    var _payPalService: IPayPalHere
    
    init(payPalService: IPayPalHere) {
        // initilize
        self._payPalService = payPalService;
        super.init();
    }
    
    @objc func initializePayPalHere(_ call: CAPPluginCall) {
        self._payPalService.initPayPalSdk()
        call.success(["result": PayPalConstants.SUCCESS_MESSAGE])
    }
    
    @objc func initializeMerchant(_ call: CAPPluginCall) {
        self._payPalService.initMerchant(call)
    }
    
    @objc func testFunc(_ call: CAPPluginCall) {
        call.success(["result": _payPalService.testFunc(call)])
    }
}
