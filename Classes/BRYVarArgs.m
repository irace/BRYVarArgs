//
//  BRYVarArgs.m
//  BRYVarArgs
//
//  Created by Bryan Irace on 1/3/14.
//  Copyright (c) 2014 Bryan Irace. All rights reserved.
//

#import "BRYVarArgs.h"

void BRYVarArgs(void (^block)(id argument), id arguments, ...) {
    if (arguments && block) {
        va_list argumentList;
        va_start(argumentList, arguments);
        
        id argument = nil;
        
        while ((argument = va_arg(argumentList, id))) {
            block(argument);
        }
        
        va_end(argumentList);
    }
}
