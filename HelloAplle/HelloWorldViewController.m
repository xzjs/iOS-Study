//
//  HelloWorldViewController.m
//  HelloAplle
//
//  Created by xzjs on 14-3-8.
//  Copyright (c) 2014年 xzjs. All rights reserved.
//

#import "HelloWorldViewController.h"
#import "AddressList.h"

@interface HelloWorldViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView_;
- (IBAction)click:(id)sender;

@property (strong,nonatomic) NSMutableArray * arrItems_;

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    self.arrItems_=[[NSMutableArray alloc] init];
    AddressList * addressList1=[[AddressList alloc] init];
    addressList1.name_=@"福娃";
    addressList1.imgHead_=[UIImage imageNamed:@"1.jpg"];
    AddressList * addressList2=[[AddressList alloc] init];
    addressList2.name_=@"吉祥";
    addressList2.imgHead_=[UIImage imageNamed:@"1.jpg"];
    [self.arrItems_ addObject:addressList1];
    [self.arrItems_ addObject:addressList2];
    [self.tableView_ reloadData];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.arrItems_ count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * CellIdentifier=@"Cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    AddressList * addressList=[self.arrItems_ objectAtIndex:indexPath.row];
    NSString * name=addressList.name_;
    cell.textLabel.text=name;
    UIImage * img=addressList.imgHead_;
    cell.imageView.image=img;
    return cell;
}

-(void) tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *strMessage = [NSString stringWithFormat:@"选择了第%d行",indexPath.row+1];
    UIAlertView * alert=[[UIAlertView alloc] initWithTitle:@"这是列表" message: strMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

@end
