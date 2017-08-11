//
//  ViewController.m
//  fordemo
//
//  Created by infinium on 04/08/17.
//  Copyright (c) 2017 infinium. All rights reserved.
//
#import "Database.h"
#import "ViewController.h"
#import "DemoTableViewCell.h"
#import "AddViewController.h"
@interface ViewController ()
{
    NSMutableArray *arrStatic;
    NSMutableArray *arrDynamic;
   
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrDynamic=[[NSMutableArray alloc]init];

    NSString *queryselect=[NSString stringWithFormat:@"SELECT * FROM Employee"];
   arrDynamic=[[Database shareDatabase]SelectAllFromTable:queryselect];
    _TableShow.reloadData;
    arrStatic=[[NSMutableArray alloc]init];
        UITapGestureRecognizer *tap =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}
-(void)viewWillAppear:(BOOL)animated
{
    NSString *queryselect=[NSString stringWithFormat:@"SELECT * FROM Employee"];
    arrDynamic=[[Database shareDatabase]SelectAllFromTable:queryselect];
    _TableShow.reloadData;
}
-(void)dismissKeyboard
{
    [self.view endEditing:YES];
}

    // Do any additional setup after loading the view, typically from a nib.


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
        return arrDynamic.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    DemoTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.LblData.text=[[arrDynamic objectAtIndex:indexPath.row] objectForKey:@"Name"];
    cell.lbldata2.text=[[arrDynamic objectAtIndex:indexPath.row] objectForKey:@"Email"];
    cell.lbldata3.text=[[arrDynamic objectAtIndex:indexPath.row] objectForKey:@"Contact"];
    cell.Btnedit.tag=indexPath.row;
    cell.btnDelete.tag=indexPath.row;
    return cell;
}
- (IBAction)BtnAdd:(id)sender
{
    AddViewController *avc=[self.storyboard instantiateViewControllerWithIdentifier:@"AddViewController"];
      [self.navigationController pushViewController:avc animated:YES];

    
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
//{
//    AddViewController *avc=[self.storyboard instantiateViewControllerWithIdentifier:@"AddViewController"];
//    [self.navigationController pushViewController:avc animated:YES];
//}

@end
