//
//  HTMLLabel.m
//  HTMLLabel
//
//  Created by 蒋晨成 on 16/6/13.
//  Copyright © 2016年 蒋晨成. All rights reserved.
//

#import "HTMLLabel.h"
#import "HtmlString.h"

@interface HTMLLabel ()<RCLabelDelegate>

@end
@implementation HTMLLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        _label = [[RCLabel alloc] initWithFrame:frame];
        _label.delegate = self;
        _label.lineBreakMode = NSLineBreakByCharWrapping;
        [self addSubview:_label];
        
    }
    return self;
}
- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    _label.textColor = textColor;
}
- (void)setFont:(UIFont *)font {
    _font = font;
    _label.font = font;
}
- (void)setText:(NSString *)text {
    _text = text;
    NSString *str = [HtmlString transformString:text];
    _label.componentsAndPlainText = [RCLabel extractTextStyle:str];
    CGSize contentSize = [_label optimumSize:YES];
    _label.frame = (CGRect){0, 0,contentSize};
    self.frame = (CGRect){self.frame.origin.x, self.frame.origin.y,contentSize};
}

- (void)RCLabel:(id)RCLabel didSelectLinkWithURL:(NSString *)url {
    if ([self.delegate respondsToSelector:@selector(HTMLLabel:didSelectLinkWithURL:)]) {
        [self.delegate HTMLLabel:_label didSelectLinkWithURL:url];
    }
}


@end
