//
//  ColladaWindowController.h
//  Scenit
//
//  Created by Steven Bloemer on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ColladaWindowController : NSWindowController
@property (nonatomic, assign) IBOutlet NSTextView *textView;

- (id)initWithWindowNibName:(NSString*)windowNibName text:(NSString*)text;
@end
