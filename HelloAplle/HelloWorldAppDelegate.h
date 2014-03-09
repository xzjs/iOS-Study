//
//  HelloWorldAppDelegate.h
//  HelloAplle
//
//  Created by xzjs on 14-3-8.
//  Copyright (c) 2014年 xzjs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldAppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *window;
    IBOutlet UILabel * lbl_;
}
@property(nonatomic,retain) IBOutlet UIWindow *window;
-(IBAction)click:(id)sender;
@end
