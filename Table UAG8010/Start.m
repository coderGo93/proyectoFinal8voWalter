//
//  ViewController.m
//  Table UAG8010
//
//  Created by Walter Gonzalez Domenzain on 09/03/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Start.h"
#import "cellGirlFriends.h"

NSMutableArray *aNames;
NSMutableArray *aPhones;
NSMutableArray *aCars;
NSMutableArray *aAges;
NSMutableArray *aImags;

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    aNames = [[NSMutableArray alloc] init];
    [aNames addObject:[NSString stringWithFormat:@"Marge"]];
    [aNames addObject:[NSString stringWithFormat:@"Lisa"]];
    [aNames addObject:[NSString stringWithFormat:@"Patty"]];
    [aNames addObject:[NSString stringWithFormat:@"Edna"]];
    [aNames addObject:[NSString stringWithFormat:@"Maude"]];
    
    aPhones = [[NSMutableArray alloc] init];
    [aPhones addObject:[NSString stringWithFormat:@"3333596065"]];
    [aPhones addObject:[NSString stringWithFormat:@"1234567890"]];
    [aPhones addObject:[NSString stringWithFormat:@"1112223334"]];
    [aPhones addObject:[NSString stringWithFormat:@"5555666888"]];
    [aPhones addObject:[NSString stringWithFormat:@"8989373878"]];
    
    aAges = [[NSMutableArray alloc] init];
    [aAges addObject:[NSString stringWithFormat:@"18"]];
    [aAges addObject:[NSString stringWithFormat:@"19"]];
    [aAges addObject:[NSString stringWithFormat:@"20"]];
    [aAges addObject:[NSString stringWithFormat:@"21"]];
    [aAges addObject:[NSString stringWithFormat:@"22"]];
    
    aCars = [[NSMutableArray alloc] init];
    [aCars addObject:[NSString stringWithFormat:@"Mustang"]];
    [aCars addObject:[NSString stringWithFormat:@"Captiva"]];
    [aCars addObject:[NSString stringWithFormat:@"Trax"]];
    [aCars addObject:[NSString stringWithFormat:@"Aveo"]];
    [aCars addObject:[NSString stringWithFormat:@"Bici"]];
    
    aImags = [[NSMutableArray alloc] init];
    [aImags addObject:[NSString stringWithFormat:@"marge.png"]];
    [aImags addObject:[NSString stringWithFormat:@"lisa.png"]];
    [aImags addObject:[NSString stringWithFormat:@"patty.png"]];
    [aImags addObject:[NSString stringWithFormat:@"edna.png"]];
    [aImags addObject:[NSString stringWithFormat:@"maude.png"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/***********************************************************************************************
Table Functions
**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   
    return 5;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}

//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellGirlFriends");
    static NSString *CellIdentifier = @"cellGirlFriends";
    
    cellGirlFriends *cell = (cellGirlFriends *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"cellGirlFriends" bundle:nil] forCellReuseIdentifier:@"cellGirlFriends"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellGirlFriends"];
    }
    
    cell.selectionStyle     = UITableViewCellSelectionStyleNone;
    cell.lblName.text       = aNames[indexPath.row];
    cell.lblPhone.text      = aPhones[indexPath.row];
    cell.lblAge.text        = aAges[indexPath.row];
    cell.lblCar.text        = aCars[indexPath.row];
    cell.imgUser.image      = [UIImage imageNamed:aImags[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}






























@end
