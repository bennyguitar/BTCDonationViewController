//
//  BTCDonationViewController.h
//  Donation Controller Demo
//
//  Created by Ben Gordon on 3/23/14.
//  Copyright (c) 2014 bennyguitar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BTCDonationViewController : UIViewController

#pragma mark - Init
/**
 *  Creates a new BTCDonationViewController
 *
 *  @param btcAddress NSString
 *
 *  @return BTCDonationViewController
 */
+ (instancetype)newControllerWithBTCAddress:(NSString *)btcAddress;

/**
 *  Creates a new BTCDonationViewController with an NSDictionary of UI options. The keys available for use use the following pattern: BTCDonationUIKeyXXX
 *
 *  @param btcAddress NSString
 *  @param uiOptions  NSDictionary
 *
 *  @return BTCDonationViewController
 */
+ (instancetype)newControllerWithBTCAddress:(NSString *)btcAddress options:(NSDictionary *)uiOptions;

/**
 *  Creates a new BTCDonationViewController using a nib, a BTC Public Address, and UI options. The keys available for use adhere to the following pattern: BTCDonationUIKeyXXX
 *
 *  @param nibNameOrNil   NSString
 *  @param nibBundleOrNil NSBundle
 *  @param btcAddress     NSString
 *  @param uiOptions      NSDictionary
 *
 *  @return BTCDonationViewController
 */
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil address:(NSString *)btcAddress options:(NSDictionary *)uiOptions;

@end
