//
//  AppDelegate.m
//  Scenit
//
//  Created by Steven Bloemer on 7/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "ColladaWindowController.h"

@interface AppDelegate () {
    NSMutableArray* windows;
}

@end

@implementation AppDelegate

@synthesize window = _window;

- (id)init
{
    if (self = [super init]) {
        self->windows = [[NSMutableArray alloc] initWithCapacity:5];
    }

    return self;
}

- (void)dealloc
{
    [self->windows release];
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
                // Open a window for the file
                NSLog(@"Got %@\n", file_path);
                NSString* contents = [NSString stringWithContentsOfURL:file_path
                                                          usedEncoding:Nil
                                                                 error:Nil];
                [self->windows addObject:[[ColladaWindowController alloc]
                                          initWithWindowNibName:@"ColladaWindow" text:contents]];
                [(NSWindowController*)[self->windows lastObject] showWindow:Nil];
            }
        }
    }];
}
@end
