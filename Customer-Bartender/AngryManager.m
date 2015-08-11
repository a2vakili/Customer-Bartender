//
//  AngryManager.m
//  Customer-Bartender
//
//  Created by Arsalan Vakili on 2015-08-07.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "AngryManager.h"

@implementation AngryManager

-(void)talkToMangers:(Customer *)customer{
    if (customer.age < 21) {
        NSLog(@" customer %@ can't drink",customer.name);
    }
    else if (customer.age >= 21)
    NSLog(@"It is ok customer can drink but they have to pay for it");
}

@end
