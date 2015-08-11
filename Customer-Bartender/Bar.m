//
//  Bar.m
//  Customer-Bartender
//
//  Created by Arsalan Vakili on 2015-08-07.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "Bar.h"

@implementation Bar
- (instancetype)initWithName: (NSString *)barName withMenu: (NSDictionary *) menu
{
    self = [super init];
    if (self) {
        _barName = barName;
         _menu = menu;
         _bill = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)introduction:(Customer *)customer bartender:(Bartender *)bartender {
    NSLog(@"Hello Welcome to %@ pub",self.barName);
    NSLog(@"My name is %@, I will be your server for today",bartender.name);
    NSLog(@"Hi %@, I am %@, and i would like to get a drink",bartender.name, customer.name);
    NSLog(@"before giving your menu, may I see your ID");
    if (customer.age > 19) {
        NSLog(@"here is the menu %@", self.menu);
        NSLog(@"I would like to order %@",customer.preference);
        
    
        
        
        NSNumber *price = self.menu[customer.preference];
        
        if (price) {
            // we have on tap
            NSLog(@"Yes, we do have %@ on tap", customer.preference);
            [self.bill addObject:price];
        } else {
            // nope
            NSLog(@"Sorry, we do not have your selection on tap");
        }
        
    }
    else {
        NSLog(@"I am sorry but you are under age");
    }
}

-(void)payingBill: (Customer *)customer{
    
    NSNumber *price = self.bill[0];
    NSLog(@"Here is your bill for your drink is $ %@", price);
    NSLog(@"How would you like to pay?");
    if (customer.money == CashOrder) {
        NSLog(@" I am paying cash");
    }
    else if (customer.money == DebitOrder){
        NSLog(@"I am paying with debit");
    }
    else if (customer.money == CreditOrder){
        NSLog(@" I am paying with credit");
    }
    else {
           [self.delegate talkToMangers:customer];
    }
    NSLog(@"Thank you for choosing %@, come back again",self.barName);
}
@end
