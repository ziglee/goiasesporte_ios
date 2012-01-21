//
//  GoiasWebMobAppDelegate.h
//  GoiasWebMob
//
//  Created by Cassio Ribeiro on 02/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GoiasWebMobViewController;

@interface GoiasWebMobAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet GoiasWebMobViewController *viewController;

@end
