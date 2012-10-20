//
//  ViewController.m
//  Example
//
//  Created by Chris Vanderschuere on 10/19/12.
//  Copyright (c) 2012 Chris Vanderschuere. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize count, exampleButton, example;
@synthesize stepper;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*
        This a method, viewDidLoad, that gets called once on startup. You can put all things you need to setup up before the view becomes visible in this method
    */
    
    //Create a Label
    self.example = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 100)];
    
    //Set property of UILabel example with an nsstring
    self.example.text = @"Hello World!";

    //Add to view. You need to add things as subviews of the view before they will become visible on the screen.
    [self.view addSubview:self.example];
    
    //Modify View. You can change all sorts of properties of the view like this...
    self.view.backgroundColor = [UIColor grayColor];
    
    //Create stepper (Alloc/init, add method to call on action, add to view) 
    self.stepper = [[UIStepper alloc] initWithFrame:CGRectMake(0, 200, 50,20)];
    [self.stepper addTarget:self action:@selector(stepperSelectorAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.stepper];
    
}
//This method gets called whenever you "touch up inside" on our uibutton (We did this with Interface Builder, MainStoryboard.storyboard)
-(IBAction)incrementCounterLabel:(id)sender{
    
    self.count++; // count = count + 1
    
    //Set the "text" property of our label to a string
    self.example.text = [NSString stringWithFormat:@"Count: %d", self.count]; //stringWithFormat works very similar printf in C
}
-(void) stepperSelectorAction:(UIStepper *) sender{
    //This gets called on UIControlEventValueChanged like we setup in viewDidLoad
    self.example.text = [NSString stringWithFormat:@"Count: %f", sender.value];
    
}

@end
