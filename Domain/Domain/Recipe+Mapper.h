//
//  Recipe+Mapper.h
//  Domain
//
//  Created by Nick Peachey on 15/04/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import "Recipe.h"

@interface Recipe (Mapper)

+(id)build:(NSDictionary *)dictionary;

@end
