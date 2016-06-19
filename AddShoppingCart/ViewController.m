//
//  ViewController.m
//  AddShoppingCart
//
//  Created by 颜泽勇 on 16/6/16.
//  Copyright © 2016年 CoderBar.cn. All rights reserved.
//

#import "ViewController.h"
#import "bottomView.h"
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
    //  控制器View向下移动了导航栏 + 状态栏的高度 (视图的高度不变)
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [self setupBarView];
}

-(void)setupBarView{
    //  底部操作栏(bottomView) - 初始化 / 添加到控制器View
    bottomView *barView = [[bottomView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 64 - 47, self.view.frame.size.width, 47)];
    barView.backgroundColor = [UIColor whiteColor];
    
    //  客服, 立即购买, 加入购物车, 收藏, 店铺 - 点击事件
    [barView.bt_Service addTarget:self action:@selector(clickService:) forControlEvents:UIControlEventTouchUpInside];
    [barView.bt_Shop addTarget:self action:@selector(clickShop:) forControlEvents:UIControlEventTouchUpInside];
    [barView.bt_collection addTarget:self action:@selector(clickCollection:) forControlEvents:UIControlEventTouchUpInside];
    [barView.bt_addBasket addTarget:self action:@selector(clickAddBasket:) forControlEvents:UIControlEventTouchUpInside];
    [barView.bt_buyNow addTarget:self action:@selector(clickBuyNow:) forControlEvents:UIControlEventTouchUpInside];
    
    //  底部bottomView添加到控制器View中
    [self.view addSubview:barView];

}



//  点击客服调用
-(void)clickService:(UIButton *)serviceButton{
    
    UIAlertView *serviceAlert = [[UIAlertView alloc] initWithTitle:@"点击客服" message:nil delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [serviceAlert show];
}

//  点击店铺调用
-(void)clickShop:(UIButton *)shopButton{
    
    UIAlertView *shopAlert = [[UIAlertView alloc] initWithTitle:@"进入店铺" message:nil delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [shopAlert show];
}

//  点击收藏调用
-(void)clickCollection:(UIButton *)collectionButton{
    
    collectionButton.selected = !collectionButton.selected;
    if (collectionButton.selected) { // 已经收藏
        UIAlertView *collectionAlert = [[UIAlertView alloc] initWithTitle:@"已经收藏" message:nil delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [collectionAlert show];
        
    }else{// 取消收藏
        UIAlertView *collectionAlert = [[UIAlertView alloc] initWithTitle:@"取消收藏" message:nil delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [collectionAlert show];
    }

}

#pragma mark - 加入购物车 - 重点
//  点击加入购物车调用
-(void)clickAddBasket:(UIButton *)addBasketButton{
    
    //  重点部分
    NSLog(@"加入购物车");
}

//  点击立即购买
-(void)clickBuyNow:(UIButton *)buyNowButton{
    
    UIAlertView *buyNowAlert = [[UIAlertView alloc] initWithTitle:@"点击立即购买" message:nil delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [buyNowAlert show];
}

@end
