#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(PayPalHere, "PayPalHere",
           CAP_PLUGIN_METHOD(testFunc, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(initializePayPalHere, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(initializeMerchant, CAPPluginReturnPromise);
)
