//
//  SDAViewController.m
//  tutorial2
//
//  Created by SDA on 9/3/13.
//  Copyright (c) 2013 Sean Adler. All rights reserved.
//

#import "SDAViewController.h"

@interface SDAViewController ()

@end

@implementation SDAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Create frame for grid.
    int originX = self.view.bounds.size.width * .10;
    int originY = self.view.bounds.size.height * .10;
    int size = MIN(self.view.bounds.size.width, self.view.bounds.size.height) * .6;
    CGRect gridFrame = CGRectMake(originX, originY, size, size);
    
    // Create grid.
    theGrid = [[SDAGrid alloc] initWithFrame:gridFrame];
    [self.view addSubview:theGrid];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
