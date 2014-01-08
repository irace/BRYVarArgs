//
//  BRYVarArgs.m
//  BRYVarArgs
//
//  Created by Bryan Irace on 1/3/14.
//  Copyright (c) 2014 Bryan Irace. All rights reserved.
//

#import "BRYVarArgs.h"

void BRYVarArgs(void (^block)(id argument), id argument, ...) {
    if (argument && block) {
        va_list argumentList;
        va_start(argumentList, argument);

        do {
            block(argument);
        }
        while ((argument = va_arg(argumentList, id)));
        
        va_end(argumentList);
    }
}
