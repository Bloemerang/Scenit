//
//  ColladaWindowController.m
//  Scenit
//
//  Created by Steven Bloemer on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ColladaWindowController.h"

@interface ColladaWindowController () {
    NSString* collada_text;
}
@end

@implementation ColladaWindowController
@synthesize textView;

- (id)initWithWindowNibName:(NSString*)windowNibName text:(NSString*)text
{
    self = [super initWithWindowNibName:windowNibName];
    if (self) {
        self->collada_text = [text retain];
    }
    
    return self;
}

- (void)dealloc
{
    [self->collada_text release];
    [super dealloc];
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    [self.textView insertText:self->collada_text];
}

@end
