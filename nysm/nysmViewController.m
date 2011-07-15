//
//  nysmViewController.m
//  nysm
//
//  Created by Andrew Meier on 6/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "nysmViewController.h"

@implementation nysmViewController
@synthesize nysmView;
//@synthesize nysmCounterLabel;
//@synthesize nysmImage;

- (void)dealloc
{
    [nysmView release];
    nysmView = nil;
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*- (void)updateCounter:(NSTimer *)theTimer {
    static int count = 0;
    count++;
    NSString *s = [[NSString alloc]
                   initWithFormat:@"%d", count];
    self.nysmCounterLabel.text = s;
    [s release];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [UIView beginAnimations:nil context:context];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:1.0f];
    
    [self.nysmView setAlpha:(float)((count & 0x07) == 0)];
    [self.nysmImage setAlpha:(float)((count & 0x07) == 2)];
    [self.nysmView setAlpha:(float)((count & 0x07) == 4)];
    
    [UIView commitAnimations];
}*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    //NSURL *url = [NSURL URLWithString:@"http://www.nysm.nysed.gov"];
    //NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    [nysmView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]isDirectory:NO]]];
    
    /*self.nysmCounterLabel.text = @"0";
    
    [NSTimer scheduledTimerWithTimeInterval:10.0f
             target:self
             selector:@selector(updateCounter:)
             userInfo:nil
             repeats:YES];*/
    
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
