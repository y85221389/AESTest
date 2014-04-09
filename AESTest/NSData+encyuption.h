//
//  NSData+encyuption.h
//  XPaySev
//
//  Created by 惠一路 on 13-11-7.
//  Copyright (c) 2013年 惠一路. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (encyuption)
- (NSData *)AES256EncryptWithKey:(NSString *)key;   //加密

- (NSData *)AES256DecryptWithKey:(NSString *)key;   //解密

- (NSString *)newStringInBase64FromData;            //追加64编码

+ (NSString*)base64encode:(NSString*)str;           //同上64编码
@end
