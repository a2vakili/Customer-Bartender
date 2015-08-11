//
//  main.m
//  Customer-Bartender
//
//  Created by Arsalan Vakili on 2015-08-07.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bar.h"
#import "HappyManager.h"
#import "AngryManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Bartender *bartender = [[Bartender alloc]initWithName:@"Julie"];
        Bartender *bartender2 = [[Bartender alloc]initWithName:@"Amy"];
        
        Customer *customer1 = [[Customer alloc]initWithName:@"james" withAge:22 withPreference:@"Hienkien" withMoney:CashOrder];
        Customer *customer2 = [[Customer alloc]initWithName:@"Chelsea" withAge:18 withPreference:@"Blue"withMoney:DebitOrder];
        Customer *customer3 = [[Customer alloc]initWithName:@"Bob" withAge:21 withPreference:@"Coors Light" withMoney:CreditOrder];
        
        Customer *customer4 = [[Customer alloc]initWithName:@"Jane" withAge:20 withPreference:@"Blue" withMoney:NoMoneyOrder];
        Bar *bar = [[Bar alloc]initWithName:@"Joe's Bar" withMenu: @{@"Blue": @6, @"Rickard's Red":@7,
                                                                    @"Hienkien": @8, @"Stella":@9}];
        Bar *bar2 = [[Bar alloc]initWithName:@"O.Brian" withMenu:@{@"Rickard's White": @7, @"Coors Light": @4, @"Guniess": @10 }];
        
        [bar introduction:customer1 bartender:bartender];
        [bar payingBill:customer1];
        [bar introduction:customer2 bartender:bartender];
        [bar introduction:customer3 bartender:bartender];
        //[bar payingBill:customer3];
        [bar2 introduction:customer3 bartender:bartender2];
        [bar2 payingBill:customer3];
        
        
        
        HappyManager *happyManager = [[HappyManager alloc]init];
        bar.delegate = happyManager;
        [bar introduction:customer4 bartender:bartender];
        [bar payingBill:customer4];
        
        
        AngryManager *angryManager = [[AngryManager alloc]init];
        bar.delegate = angryManager;
        [bar payingBill:customer4];
        
        

        

    }
    return 0;
}
