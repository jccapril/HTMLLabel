//
//  ViewController.m
//  HTMLLabel
//
//  Created by 蒋晨成 on 16/6/13.
//  Copyright © 2016年 蒋晨成. All rights reserved.
//

#import "ViewController.h"
#import "HTMLLabel.h"
@interface ViewController ()<HTMLLabelDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    HTMLLabel *htmlLabel = [[HTMLLabel alloc] initWithFrame:CGRectMake(0, 40, 300, 90)];
    htmlLabel.delegate = self;
    htmlLabel.text = @"@dasda dakda #dad#";
    [self.view addSubview:htmlLabel];
}

- (void)HTMLLabel:(id)HTMLLabel didSelectLinkWithURL:(NSString *)url {
    NSLog(@"%@",url);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
