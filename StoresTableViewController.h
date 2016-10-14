//
//  StoresTableViewController.h
//  WillShoppingList
//
//  Created by New User on 10/12/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryItem.h"
#import "StoreItemsTableViewController.h"
#import "StoreInputScreenViewController.h"
#import "ListofStores.h"

@interface StoresTableViewController : UITableViewController<AddShoppingListViewControllerDelegate>

{
    NSMutableArray *ListofGroceryStores;
    
}

@end
