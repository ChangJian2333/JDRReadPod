//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  JDRReadPod.m
//  JDRReadPod
//
//  Created by 常见 on 2019/3/13.
//  Copyright (c) 2019 com.test. All rights reserved.
//

#import "JDRReadPod.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>

CHDeclareClass(CustomViewController)

CHOptimizedMethod(0, self, NSString*, CustomViewController,getMyName){
    return @"MonkeyDevPod";
}

CHConstructor{
    CHLoadLateClass(CustomViewController);
    CHClassHook(0, CustomViewController, getMyName);
}
