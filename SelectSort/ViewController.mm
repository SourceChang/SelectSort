//
//  ViewController.m
//  SelectSort
//
//  Created by Source on 2020/10/2.
//  Copyright © 2020 Source. All rights reserved.
//

#import "ViewController.h"
#import "Sorter.h"


#include <iostream>


#include "SelectSort.hpp"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    std::vector<int> array1 = { 1, 3, 2 };
    SelectSort::sort(array1);
    for ( auto value : array1 ) {
        
        std::cout << value << " ";
    }
    std::cout << std::endl;
    
    std::vector<int> array2 = { 4, 2, 3, 8, 7, 6, 1, 2, 3, 9, 8, 7 };
    SelectSort::sort(array2);
    for ( auto value : array2 ) {
        
        std::cout << value << " ";
    }
    std::cout << std::endl;
    
    std::vector<int> array3 = { 9, 8, 7, 6, 5, 4, 3, 2, 1 };
    SelectSort::sort(array3);
    for ( auto value : array3 ) {
        
        std::cout << value << " ";
    }
    std::cout << std::endl;
    
    NSLog(@"%@", [[Sorter selectSort:@[ @1, @3, @2 ]] componentsJoinedByString:@", "]);
    NSLog(@"%@", [[Sorter selectSort:@[ @4, @2, @3, @8, @7, @6, @1, @2, @3, @9, @8, @7 ]] componentsJoinedByString:@", "]);
    NSLog(@"%@", [[Sorter selectSort:@[ @9, @8, @7, @6, @5, @4, @3, @2, @1 ]] componentsJoinedByString:@", "]);
}


@end
