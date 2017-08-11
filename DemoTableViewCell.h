//
//  DemoTableViewCell.h
//  fordemo
//
//  Created by infinium on 04/08/17.
//  Copyright (c) 2017 infinium. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *LblData;
@property (weak, nonatomic) IBOutlet UILabel *lbldata2;
@property (weak, nonatomic) IBOutlet UILabel *lbldata3;

@property (weak, nonatomic) IBOutlet UIButton *Btnedit;
@property (weak, nonatomic) IBOutlet UIButton *btnDelete;

@end
