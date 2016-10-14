//
//  StoreInputScreenViewController.m
//  WillShoppingList
//
//  Created by New User on 10/12/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

#import "StoreInputScreenViewController.h"

@interface StoreInputScreenViewController ()

@end

@implementation StoreInputScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) saveButtonPressed{
    
    ListofStores *store = [[ListofStores alloc] init];
    store.nameofStore = self.storeinputTextfield.text;
    store.storeNumber = self.storeinputNumberTextfield.text;
    
    [self.delegate addShoppingListViewControllerDelegate: store];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
    
}
    

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
