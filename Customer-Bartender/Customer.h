//
//  Customer.h
//  Customer-Bartender
//
//  Created by Arsalan Vakili on 2015-08-07.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    CashOrder,
    DebitOrder,
    CreditOrder,
    NoMoneyOrder
}MoneyOrder;

@interface Customer : NSObject

@property(nonatomic,strong) NSString *name;
@property(nonatomic) int age;
@property(nonatomic,strong) NSString *preference;

@property(nonatomic) MoneyOrder money;

- (instancetype)initWithName: (NSString *)name withAge:(int)age withPreference:(NSString *)preference withMoney:(MoneyOrder)money;

@end
