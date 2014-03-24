//
//  BTCDonationViewController.m
//  Donation Controller Demo
//
//  Created by Ben Gordon on 3/23/14.
//  Copyright (c) 2014 bennyguitar. All rights reserved.
//

#import "BTCDonationViewController.h"

@interface BTCDonationViewController ()
// UI
@property (weak, nonatomic) IBOutlet UIImageView *qrImageView;
@property (weak, nonatomic) IBOutlet UIButton *addressButton;
@property (weak, nonatomic) IBOutlet UILabel *headerTopLabel;
@property (weak, nonatomic) IBOutlet UILabel *headerBottomLabel;
@property (weak, nonatomic) IBOutlet UILabel *footerLabel;
// Data
@property (nonatomic, strong) NSString *btcAddress;
@property (nonatomic, strong) NSDictionary *uiOptions;
@end

@implementation BTCDonationViewController


#pragma mark - Init
+ (instancetype)newControllerWithBTCAddress:(NSString *)btcAddress
{
    return [self newControllerWithBTCAddress:btcAddress options:@{}];
}

+ (instancetype)newControllerWithBTCAddress:(NSString *)btcAddress options:(NSDictionary *)uiOptions
{
    return [[self alloc] initWithNibName:@"BTCDonationViewController" bundle:nil address:btcAddress options:@{}];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil address:(NSString *)btcAddress options:(NSDictionary *)uiOptions
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.btcAddress = btcAddress;
        self.uiOptions = uiOptions;
    }
    return self;
}



#pragma mark - View Lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UI
- (void)setUI {
    
}

- (void)showCopiedText {
    
}


#pragma mark - Copy Address
- (IBAction)didSelectCopyAddressButton:(UIButton *)sender {
    [[UIPasteboard generalPasteboard] setString:self.btcAddress];
    [self showCopiedText];
}


@end
