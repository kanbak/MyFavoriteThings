//
//  ViewController.m
//  MyFavorite Things
//
//  Created by Umut Kanbak on 7/16/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *myTextField;
    
    __weak IBOutlet UITextView *myTextView;
   
    NSMutableArray *myArray;
    
}
- (IBAction)addButton:(id)sender;
- (IBAction)removeButton:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    myArray = [[NSMutableArray alloc] initWithCapacity:10];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButton:(id)sender {
    [myArray addObject:myTextField.text];
    [myTextView setText: [NSString stringWithFormat:@" %@",myArray]];
    //[myTextField resignFirstResponder];
}

- (IBAction)removeButton:(id)sender {
    [myArray removeLastObject];
    [myTextView setText: [NSString stringWithFormat:@" %@",myArray]];

}
- (IBAction)reverse:(id)sender {

    
}


@end
