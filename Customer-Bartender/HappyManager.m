//
//  HappyManager.m
//  Customer-Bartender
//
//  Created by Arsalan Vakili on 2015-08-07.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "HappyManager.h"

@implementation HappyManager


  

-(void)talkToMangers:(Customer *)customer{
    if (customer.age > 19) {
        NSLog(@"It's ok %@ can have a free drink", customer.name);
    }
    else if (customer.age <= 19){
    NSLog(@" I am sorry as much as I want to give you drink, but you are too young");

    }
}

@end
