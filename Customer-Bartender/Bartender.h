//
//  Bartender.h
//  Customer-Bartender
//
//  Created by Arsalan Vakili on 2015-08-07.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Customer.h"

@interface Bartender : NSObject

@property (nonatomic,strong) NSString *name;


- (instancetype)initWithName:(NSString *)name;


@end
