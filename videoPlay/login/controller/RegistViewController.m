//
//  RegistViewController.m
//  videoPlay
//
//  Created by Wrappers Zhang on 2018/5/16.
//  Copyright © 2018年 梁世伟. All rights reserved.
//

#import "RegistViewController.h"
#import "UIColor+Hex.h"
#import <Masonry.h>

@interface RegistViewController ()
@property (nonatomic) UITextField *acountTextField;
@property (nonatomic) UITextField *passwordTextfield;
@property (nonatomic) UIButton *registButton;

@property (nonatomic) UILabel *titleLabel;
@property (nonatomic) UILabel *acountLabel;
@property (nonatomic) UILabel *passwordLabel;

@end

@implementation RegistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setuoUI];
}

- (void)setuoUI {
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.text = @"Video";
    self.titleLabel.font = [UIFont systemFontOfSize:35];
    self.titleLabel.textColor = [[UIColor alloc] initWithRed:201/255 green:104/255 blue:234/255 alpha:1.0];
    [self.view addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(self.view.mas_top).offset(130);
    }];
    
    _acountLabel = [[UILabel alloc] init];
    _acountLabel.text = @"账号";
    _acountLabel.textColor = UIColor.blackColor;
    _acountLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview: _acountLabel];
    [_acountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(250);
        make.leading.equalTo(self.view.mas_leading).offset(20);
    }];
    
    _passwordLabel = [[UILabel alloc] init];
    _passwordLabel.text = @"密码";
    _passwordLabel.textColor = UIColor.blackColor;
    _passwordLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview: _passwordLabel];
    [_passwordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_acountLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.view.mas_leading).offset(20);
    }];
    
    _acountTextField = [[UITextField alloc] init];
    _acountTextField.placeholder = @"请输入账号";
    [self.view addSubview:_acountTextField];
    [_acountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_acountLabel);
        make.leading.equalTo(_acountLabel.mas_trailing).offset(10);
    }];
    
    _passwordTextfield = [[UITextField alloc] init];
    _passwordTextfield.placeholder = @"请输入账号";
    [self.view addSubview:_passwordTextfield];
    [_passwordTextfield mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_passwordLabel);
        make.leading.equalTo(_passwordLabel.mas_trailing).offset(10);
    }];
    
    _registButton = [[UIButton alloc] init];
    _registButton.backgroundColor = [UIColor colorWithHexString:@"#EE82EE"];
    [_registButton setTintColor:UIColor.whiteColor];
    _registButton.layer.masksToBounds = YES;
    _registButton.layer.cornerRadius = 5;
    [_registButton setTitle:@"注册" forState:(UIControlStateNormal)];
    [_registButton addTarget:self action:@selector(regist) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:_registButton];
    [_registButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_passwordTextfield.mas_bottom).offset(20);
        make.leading.equalTo(self.view).offset(20);
        make.trailing.equalTo(self.view).offset(-20);
        make.height.equalTo(@50);
    }];
}

- (void)regist {
    [self dismissViewControllerAnimated:true completion:NULL];
}


@end
