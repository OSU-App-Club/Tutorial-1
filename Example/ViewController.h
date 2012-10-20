//
//  ViewController.h
//  Example
//
//  Created by Chris Vanderschuere on 10/19/12.
//  Copyright (c) 2012 Chris Vanderschuere. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Add UIButton property (This is weak because we create it in Inteface Builder)
@property (nonatomic, weak) IBOutlet UIButton *exampleButton;
//These properties need to be strong so they are never released. free()
@property (nonatomic, strong) UILabel *example;
@property (nonatomic, strong) UIStepper *stepper;
@property int count;

//Use IBAction to make methods appear in Interface Builder (returns void)
-(IBAction)incrementCounterLabel:(id)sender;

//We connected this method to the UIStepper in code in viewDidLoad
//The UIStepper that sends the action will be included with the "sender" paramater
-(void) stepperSelectorAction:(UIStepper *) sender;
 
@end
