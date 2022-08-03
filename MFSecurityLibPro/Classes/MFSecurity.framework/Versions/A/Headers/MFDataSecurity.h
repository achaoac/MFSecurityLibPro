//
//  MFDataSecurity.h
//  MFSecurityPro
//
//  Created by achao on 2022/7/9.
//  Copyright © 2022 mf.security All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MFDataSecurity : NSObject

/// 加密
NSString * mf_securityEncode(NSString *string);

/// 解密
NSString * mf_securityDecode(NSString *string);

@end

NS_ASSUME_NONNULL_END
