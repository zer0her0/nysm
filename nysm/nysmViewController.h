//
//  nysmViewController.h
//  nysm
//
//  Created by Andrew Meier on 6/21/11.
//  Copyright 2011 NYSM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface nysmViewController : UIViewController {
    UIWebView *nysmView;
    
    IBOutlet UILabel *nysmCounterLabel;
    IBOutlet UIImageView *nsymImage;
}

@property(nonatomic, retain) IBOutlet UIWebView *nysmView;
@property(nonatomic, getter = isIdleTimerDisabled) BOOL idleTimerDisabled;

//@property(nonatomic, retain) UILabel *nysmCounterLabel;

//@property(nonatomic, retain) UIImageView *nysmImage;

@end
