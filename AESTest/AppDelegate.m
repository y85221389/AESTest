//
//  AppDelegate.m
//  AESTest
//
//  Created by 惠一路 on 13-11-7.
//  Copyright (c) 2013年 惠一路. All rights reserved.
//

#import "AppDelegate.h"
#import "NSData+AES256.h"
#import "NSData+encyuption.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NSString *myToken = [NSData AES256EncryptWithPlainText:@"AES"];
    NSLog(@"%@",myToken);
    
    //NSData *tokenData = [[NSData alloc] init];
    //tokenData = [tokenData AES256EncryptWithKey:[@"xpos1qazZSE$xpos" dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSString *key = @"key";
    
    NSString *secret = @"admin";
    
    //加密
    
    NSData *plain = [secret dataUsingEncoding:NSUTF8StringEncoding];
    
    NSData *cipher = [plain AES256EncryptWithKey:key];
    
    NSLog(@"%@",[[cipher newStringInBase64FromData] autorelease]);
    NSLog(@"%@",[cipher base64Encoding]);
    
    printf("%s\n", [[cipher description] UTF8String]);
    
    NSLog(@"%@", [[[NSString alloc] initWithData:cipher encoding:NSUTF8StringEncoding] autorelease]);//打印出null,这是因为没有解密。
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
