//
//  SelectSort.cpp
//  SelectSort
//
//  Created by Source on 2020/10/2.
//  Copyright © 2020 Source. All rights reserved.
//

#include "SelectSort.hpp"


void SelectSort::sort(std::vector<int>& arrNumbers) {
    
    for ( int i = arrNumbers.size() - 1; i > 0; --i ) {
        
        int maxIndex = 0;
        for ( int j = 0; j <= i; ++j ) {
            
            if ( arrNumbers[j] > arrNumbers[maxIndex] ) {
                
                maxIndex = j;
            }
        }
        if ( maxIndex != i ) {
            
            std::swap(arrNumbers[maxIndex], arrNumbers[i]);
        }
    }
}
