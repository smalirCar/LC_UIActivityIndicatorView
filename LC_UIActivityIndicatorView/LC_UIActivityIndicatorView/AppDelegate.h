//
//  AppDelegate.h
//  LC_UIActivityIndicatorView
//
//  Created by 李成 on 2017/1/18.
//  Copyright © 2017年 liCheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

