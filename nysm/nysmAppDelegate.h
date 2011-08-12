//
//  nysmAppDelegate.h
//  nysm
//
//  Created by Andrew Meier on 6/21/11.
//  Copyright 2011 NYSM. All rights reserved.
//

#import <UIKit/UIKit.h>

@class nysmViewController;

@interface nysmAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet nysmViewController *viewController;

@end
