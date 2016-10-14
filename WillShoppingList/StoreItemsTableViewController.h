//
//  StoreItemsTableViewController.h
//  WillShoppingList
//
//  Created by New User on 10/12/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryItem.h"
#import "ListofStores.h"

@interface StoreItemsTableViewController : UITableViewController

@property (nonatomic,strong) ListofStores *selectedShoppingList;

@end
