//
//  shoppingCarView.m
//  AddShoppingCart
//
//  Created by 颜泽勇 on 16/6/17.
//  Copyright © 2016年 CoderBar.cn. All rights reserved.
//

#import "bottomView.h"

@implementation bottomView : UIView

-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        //  初始化shoppingBarView中的内容
        //  客服
        _bt_Service = [UIButton buttonWithType:UIButtonTypeCustom];
        _bt_Service.frame = CGRectMake(0, 0, 51, self.frame.size.height);
        [_bt_Service setBackgroundImage:[UIImage imageNamed:@"service"] forState:UIControlStateNormal];
        
        [self addSubview:_bt_Service];
        
        //  店铺
        _bt_Shop = [UIButton buttonWithType:UIButtonTypeCustom];
        _bt_Shop.frame = CGRectMake(CGRectGetMaxX(_bt_Service.frame), 0, 52, self.frame.size.height);
        [_bt_Shop setBackgroundImage:[UIImage imageNamed:@"shop"] forState:UIControlStateNormal];
        
        [self addSubview:_bt_Shop];
        
        //  收藏
        _bt_collection = [UIButton buttonWithType:UIButtonTypeCustom];
        _bt_collection.frame = CGRectMake(CGRectGetMaxX(_bt_Shop.frame), 0, 52, self.frame.size.height);
        [_bt_collection setBackgroundImage:[UIImage imageNamed:@"collection"] forState:UIControlStateNormal];
        [_bt_collection setBackgroundImage:[UIImage imageNamed:@"collected"] forState:UIControlStateSelected];
        
        [self addSubview:_bt_collection];
        
        //  加入购物车
        _bt_addBasket = [UIButton buttonWithType:UIButtonTypeCustom];
        _bt_addBasket.frame = CGRectMake(CGRectGetMaxX(_bt_collection.frame), 0, 109, self.frame.size.height);
        [_bt_addBasket setBackgroundImage:[UIImage imageNamed:@"addbasket"] forState:UIControlStateNormal];
        
        [self addSubview:_bt_addBasket];
        
        //  立即购买
        _bt_buyNow = [UIButton buttonWithType:UIButtonTypeCustom];
        _bt_buyNow.frame = CGRectMake(CGRectGetMaxX(_bt_addBasket.frame), 0, self.frame.size.width - CGRectGetMaxX(_bt_addBasket.frame), self.frame.size.height);
        [_bt_buyNow setBackgroundImage:[UIImage imageNamed:@"buynow"] forState:UIControlStateNormal];
        
        [self addSubview:_bt_buyNow];
        
    }
    return self;
}





@end
