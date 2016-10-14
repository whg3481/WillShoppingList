//
//  StoresTableViewController.m
//  WillShoppingList
//
//  Created by New User on 10/12/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

#import "StoresTableViewController.h"

@interface StoresTableViewController ()

@end

@implementation StoresTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // This is where I can change the color of the Nav Bar from the AppDelegate file
    
    ListofGroceryStores = [[NSMutableArray alloc] init];
    
    ListofStores *walmart = [[ListofStores alloc]init];
    walmart.nameofStore  = @"Walmart";
    walmart.storeNumber =@"5432";
    
    walmart.groceryItems = [[NSMutableArray alloc] init];
    [ListofGroceryStores addObject:walmart];
    
    ListofStores  *aldi = [[ListofStores alloc] init];
    aldi.nameofStore = @"Aldi";
    aldi.storeNumber = @"6996";
    
    aldi.groceryItems = [[NSMutableArray alloc] init];
    [ListofGroceryStores addObject:aldi];
    
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return ListofGroceryStores.count;
}

-(void) addShoppingListViewControllerDelegate:(ListofStores *)ListofStores {
    
    [ListofGroceryStores addObject:ListofStores];
    [self.tableView reloadData];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WillCell"
                                                            forIndexPath:indexPath];
    
    ListofStores *thisList = ListofGroceryStores[indexPath.row];
    
    cell.textLabel.text = thisList.nameofStore;
    cell.detailTextLabel.text = thisList.storeNumber;
    
    return cell;
}





#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation//
 
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showGroceryItems"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        ListofStores *shoppingList = ListofGroceryStores [indexPath.row];
        StoreItemsTableViewController *controller = segue.destinationViewController;
        controller.selectedShoppingList = shoppingList;
   
        
        
    } else {
        StoreInputScreenViewController *addShoppingListViewController = segue.destinationViewController;
        addShoppingListViewController.delegate = self;
        
    }
  


}


@end
