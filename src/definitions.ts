declare module '@capacitor/core' {
  interface PluginRegistry {
    PayPalHere: PayPalHerePlugin;
  }
}

export interface PayPalHerePlugin {
  testFunc(options: { value: string }): Promise<any>;
  initializePayPalHere(options: { value: string }): Promise<any>;
  initializeMerchant(options: { accessToken: string, refreshUrl: string, environment: string }): Promise<any>;
}
