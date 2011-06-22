//
//  nysmViewController.h
//  nysm
//
//  Created by Andrew Meier on 6/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface nysmViewController : UIViewController {
    UIWebView *nysmView;
}

@property(nonatomic, retain) IBOutlet UIWebView *nysmView;

@end
