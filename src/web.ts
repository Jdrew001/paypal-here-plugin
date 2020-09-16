import { WebPlugin } from '@capacitor/core';
import { PayPalHerePlugin } from './definitions';

export class PayPalHereWeb extends WebPlugin implements PayPalHerePlugin {
  constructor() {
    super({
      name: 'PayPalHere',
      platforms: ['web'],
    });
  }
  async testFunc(options: { value: string; }): Promise<any> {
    return options;
  }
  async initializePayPalHere(options: { value: string; }): Promise<any> {
    return options;
  }
  async initializeMerchant(options: { accessToken: string; refreshUrl: string; environment: string; }): Promise<any> {
    return options;
  }

  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}

const PayPalHere = new PayPalHereWeb();

export { PayPalHere };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(PayPalHere);
