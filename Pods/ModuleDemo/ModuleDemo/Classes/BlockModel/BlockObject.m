//
//  BlockObject.m
//  Block
//
//  Created by 乐哥 on 2022/1/22.
//

#import "BlockObject.h"

@interface BlockObject ()

@end

@implementation BlockObject
+ (BlockObject *)manager {
    static BlockObject *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[BlockObject alloc] init];
    });
    
    return manager;
}

- (void)sumWithA:(int)a b:(int)b block:(sumBlock)block {
    NSLog(@"--sumWithA");
    self.sumBlock = block;
    int sum = a + b;
    self.sumBlock(sum);
}

- (void)sum1WithA:(int)a b:(int)b block:(sumBlock1)block {
    NSLog(@"--sum1WithA");
    self.sumBlock1 = block;
    int aa = self.sumBlock1(a + b) + 10;
    NSLog(@"--aa=%d",aa);
}
@end

