//
//  ViewController.h
//  Striper
//
//  Created by Rob Smith on 6/26/15.
//  Copyright (c) 2015 none. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PTKView.h"
#import "PTKUSAddressZip.h"

@interface ViewController : UIViewController <PTKViewDelegate>

@property IBOutlet PTKView* paymentView;

@end

