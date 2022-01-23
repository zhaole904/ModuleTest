//
//  ViewController.m
//  ModuleTest
//
//  Created by 乐哥 on 2022/1/22.
//

#import "ViewController.h"
#import <ModuleDemo/BlockObject.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[BlockObject manager] sumWithA:2 b:56 block:^(int sum) {
        NSLog(@"sum=%d",sum);
    }];
    
    [[BlockObject manager] sum1WithA:23 b:12 block:^int(int sum) {
        NSLog(@"sum1=%d",sum);
        return 40;
    }];
}


@end
