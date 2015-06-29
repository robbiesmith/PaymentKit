//
//  ViewController.m
//  Striper
//
//  Created by Rob Smith on 6/26/15.
//  Copyright (c) 2015 none. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.paymentView = [[PTKView alloc] initWithFrame:CGRectMake(15, 25, 290, 55)];
    self.paymentView.delegate = self;
    [self.view addSubview:self.paymentView];

//    self.zipView = [[PTKAddressZip alloc] initWithString::@"12345"];
//    [self.view addSubview:self.zipView];

// Extend/modify it so that users also have to enter a zipcode with their card info.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) paymentView:(PTKView*)paymentView withCard:(PTKCard *)card isValid:(BOOL)valid
{
    NSLog(@"Card number: %@", card.number);
    NSLog(@"Card expiry: %lu/%lu", (unsigned long)card.expMonth, (unsigned long)card.expYear);
    NSLog(@"Card cvc: %@", card.cvc);
    NSLog(@"Address zip: %@", card.addressZip);
    
    // self.navigationItem.rightBarButtonItem.enabled = valid;
}

@end
