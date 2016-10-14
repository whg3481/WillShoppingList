//
//  ListofStores.h
//  WillShoppingList
//
//  Created by New User on 10/12/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ListofStores : NSObject

@property (nonatomic,copy) NSString *nameofStore;
@property (nonatomic,copy) NSString *storeNumber;
@property (nonatomic,strong) NSMutableArray *groceryItems;

@end
