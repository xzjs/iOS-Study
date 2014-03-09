//
//  AddressList.h
//  HelloAplle
//
//  Created by 何潭碧 on 14-3-9.
//  Copyright (c) 2014年 xzjs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressList : NSObject{
    NSString *name_;
    UIImage * imgHead_;
}

@property (copy,nonatomic) NSString * name_;
@property (retain,nonatomic) UIImage * imgHead_;

@end
