//
//  BlockObject.h
//  Block
//
//  Created by 乐哥 on 2022/1/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^sumBlock)(int sum);
typedef int(^sumBlock1)(int sum);

@interface BlockObject : NSObject
@property (nonatomic, copy) sumBlock sumBlock;
@property (nonatomic, copy) sumBlock1 sumBlock1;


+ (BlockObject *)manager;
- (void)sumWithA:(int)a b:(int)b block:(sumBlock)block;
- (void)sum1WithA:(int)a b:(int)b block:(sumBlock1)block;

@end

NS_ASSUME_NONNULL_END
