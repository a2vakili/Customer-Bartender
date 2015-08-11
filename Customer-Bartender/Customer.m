//
//  Customer.m
//  Customer-Bartender
//
//  Created by Arsalan Vakili on 2015-08-07.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "Customer.h"

@implementation Customer

- (instancetype)initWithName: (NSString *)name withAge:(int)age withPreference:(NSString *)preference withMoney:(MoneyOrder)money
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _preference = preference;
        _money = money;
    }
    return self;
}

@end
