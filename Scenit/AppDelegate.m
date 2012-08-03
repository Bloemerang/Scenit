//
//  AppDelegate.m
//  Scenit
//
//  Created by Steven Bloemer on 7/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    printf("Hello!\n");
    // Insert code here to initialize your application
}

- (IBAction)openFile:(id)sender {
    NSOpenPanel* open_panel = [NSOpenPanel openPanel];
    [open_panel setCanChooseFiles:YES];
    [open_panel setCanChooseDirectories:NO];
    [open_panel setAllowsMultipleSelection:YES];

    [open_panel beginWithCompletionHandler:^(NSInteger result) {
        if (result == NSFileHandlingPanelOKButton) {
            for (NSURL* file_path in [open_panel URLs]) {
                assert([file_path isKindOfClass:[NSURL class]]);
                // Open a window for the file
                NSLog(@"Got %@\n", file_path);
            }
        }
    }];
}
@end
