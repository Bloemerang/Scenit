//
//  AppDelegate.h
//  Scenit
//
//  Created by Steven Bloemer on 7/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

- (IBAction)openFile:(id)sender;

@end
