//
//  HTMLLabel.h
//  HTMLLabel
//
//  Created by 蒋晨成 on 16/6/13.
//  Copyright © 2016年 蒋晨成. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RCLabel.h"

@protocol  HTMLLabelDelegate <NSObject>

- (void)HTMLLabel:(id)HTMLLabel didSelectLinkWithURL:(NSString *)url;

@end

@interface HTMLLabel : UIView


@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIFont *font;
@property (nonatomic, strong) RCLabel *label;

@property (nonatomic, weak) id<HTMLLabelDelegate>delegate;

@end
