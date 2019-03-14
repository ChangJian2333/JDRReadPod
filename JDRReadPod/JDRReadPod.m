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

@interface ReaderBookCatalogCell
- (void)setTextDisabled:(_Bool)arg1;
@end


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wstrict-prototypes"
#pragma GCC diagnostic ignored "-Wundeclared-selector"

// MARK: - Hook ReaderBookCatalogCell
CHDeclareClass(ReaderBookCatalogCell)

CHOptimizedMethod1(self, void, ReaderBookCatalogCell,setTextDisabled,_Bool,arg1){
    CHSuper1(ReaderBookCatalogCell, setTextDisabled, 0);
}

CHConstructor{
    CHLoadLateClass(ReaderBookCatalogCell);
    CHClassHook1(ReaderBookCatalogCell, setTextDisabled);
}
