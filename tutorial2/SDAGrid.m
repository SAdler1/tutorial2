//
//  SDAGrid.m
//  tutorial2
//
//  Created by SDA on 9/3/13.
//  Copyright (c) 2013 Sean Adler. All rights reserved.
//

#import "SDAGrid.h"

@implementation SDAGrid

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.backgroundColor = [UIColor blackColor];
        
        // Create frame for button
        int originX = 0;
        int originY = 0;
        int size = self.bounds.size.width * .2;
        CGRect buttonFrame = CGRectMake(originX, originY, size, size);
        
        // Create the button and add as a subview
        theButton = [[UIButton alloc] initWithFrame:buttonFrame];
        theButton.backgroundColor = [UIColor whiteColor];
        [theButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:theButton];
    }
    return self;
}

- (void)buttonPressed:(id)sender
{
    NSLog(@"Button was pressed.");
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
