//
//  ViewController.h
//  fordemo
//
//  Created by infinium on 04/08/17.
//  Copyright (c) 2017 infinium. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *TableShow;
@property (weak, nonatomic) IBOutlet UIButton *BtnAdd;

@end

