//
//  main.m
//  oc-02
//
//  Created by 张张 on 2019/5/23.
//  Copyright © 2019 zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FirstClass : NSObject
- (void)sayHello;

@end

@implementation FirstClass
- (void)sayHello
{
    NSString *a = @"a" "b";
    NSLog(@"hello %d",a);
}

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        FirstClass *sampleClass = [[FirstClass alloc] init];
        [sampleClass sayHello];
    }
    
    return 0;
}
