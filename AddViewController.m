//
//  AddViewController.m
//  fordemo
//
//  Created by infinium on 04/08/17.
//  Copyright (c) 2017 infinium. All rights reserved.
//

#import "AddViewController.h"
#import "Database.h"
@interface AddViewController ()
{
    NSString *status;
}
@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)BtnBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)BtnAdd:(id)sender
{
    NSString *queryinsert =[NSString stringWithFormat:@"INSERT INTO Employee(Name,Email,Contact) VALUES(\'%@\',\'%@\',%d)",_TxtName.text,_TxtMail.text,[_TxtContact.text integerValue] ];
    [[Database shareDatabase]Insert:queryinsert];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
