//
//  AddViewController.h
//  fordemo
//
//  Created by infinium on 04/08/17.
//  Copyright (c) 2017 infinium. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *TxtName;
@property (weak, nonatomic) IBOutlet UITextField *TxtMail;

@property (weak, nonatomic) IBOutlet UITextField *TxtContact;
@property (weak, nonatomic) IBOutlet UIButton *BtnAdd;
@property (weak, nonatomic) IBOutlet UIButton *Btnback;

@end
