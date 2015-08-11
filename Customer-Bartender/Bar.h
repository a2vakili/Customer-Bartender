//
//  Bar.h
//  Customer-Bartender
//
//  Created by Arsalan Vakili on 2015-08-07.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bartender.h"
#import "Customer.h"

@protocol BarDelegate <NSObject>

-(void)talkToMangers:(Customer *)customer;

@end

@interface Bar : NSObject

@property(nonatomic,strong) NSString *barName;
@property(nonatomic,strong)id <BarDelegate> delegate;

- (instancetype)initWithName: (NSString *)barName withMenu: (NSDictionary *) menu;

@property(nonatomic,strong) NSDictionary *menu;

@property(nonatomic,strong) NSMutableArray *bill;


-(void)introduction:(Customer *)customer bartender:(Bartender *)bartender;

-(void)payingBill: (Customer *)customer;

@end
