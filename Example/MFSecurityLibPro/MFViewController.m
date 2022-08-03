//
//  MFViewController.m
//  MFSecurityLibPro
//
//  Created by achaoacwang on 08/03/2022.
//  Copyright (c) 2022 achaoacwang. All rights reserved.
//

#import "MFViewController.h"
#import <MFSecurity/MFDataSecurity.h>

@interface MFViewController ()

@end

@implementation MFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:UIColor.blueColor];
    [btn setTitle:@"test" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake((self.view.frame.size.width - 100) / 2.0, (self.view.frame.size.height - 40) / 2.0, 100, 40)];
    [btn addTarget:self action:@selector(testAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)testAction {
    NSString *sourceStr = @"hello this is test!";
    NSString *encodeStr = mf_securityEncode(sourceStr);
    NSString *decodeStr = mf_securityDecode(encodeStr);
    NSLog(@"source->%@\nencode->%@\ndecode->%@",sourceStr,encodeStr,decodeStr);
    if (![decodeStr isEqualToString:sourceStr]) {
        NSAssert(NO, @"加密解密错误");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
