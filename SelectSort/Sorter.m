//
//  Sorter.m
//  SelectSort
//
//  Created by Source on 2020/10/3.
//  Copyright © 2020 Source. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter


#pragma mark - Public Methods
+ (nonnull NSArray<NSNumber *> *)selectSort:(nonnull NSArray<NSNumber *> *)arrNumbers {
    
    NSMutableArray<NSNumber *> *arrMNumbers = [arrNumbers mutableCopy];
    for ( NSInteger i = arrMNumbers.count - 1; i > 0; --i ) {
        
        NSInteger maxIndex = 0;
        for ( NSInteger j = maxIndex; j <= i; ++j ) {
            
            if ( arrMNumbers[j].integerValue > arrMNumbers[maxIndex].integerValue ) {
                
                maxIndex = j;
            }
        }
        if ( maxIndex != i ) {
            
            NSNumber *temp = arrMNumbers[i];
            arrMNumbers[i] = arrMNumbers[maxIndex];
            arrMNumbers[maxIndex] = temp;
        }
    }
    
    return [arrMNumbers copy];
}


@end
