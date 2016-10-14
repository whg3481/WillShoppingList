//
//  StoreInputScreenViewController.h
//  WillShoppingList
//
//  Created by New User on 10/12/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListofStores.h"

@protocol AddShoppingListViewControllerDelegate <NSObject>

-(void) addShoppingListViewControllerDelegate:(ListofStores *) ListofStores;


@end

@interface StoreInputScreenViewController : UIViewController

@property (nonatomic,weak) IBOutlet UITextField *storeinputTextfield;
@property (nonatomic,weak) IBOutlet UITextField *storeinputNumberTextfield;
@property (nonatomic,weak) id<AddShoppingListViewControllerDelegate> delegate;


@end
