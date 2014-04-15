//
//  Recipe+Mapper.m
//  Domain
//
//  Created by Nick Peachey on 15/04/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import "Recipe+Mapper.h"

#define kRecipeName @"name"

@implementation Recipe (Mapper)

+(id)build:(NSDictionary *)dictionary
{
    if(dictionary == nil) {
        return nil;
    }
    Recipe *recipe = [[Recipe alloc] init];
    
    recipe.name = [dictionary objectForKey:kRecipeName];
    return recipe;
}

@end
