//
//  shoppingCarView.h
//  AddShoppingCart
//
//  Created by 颜泽勇 on 16/6/17.
//  Copyright © 2016年 CoderBar.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bottomView : UIView
//  客服
@property(nonatomic, strong)UIButton *bt_Service;
//  店铺
@property(nonatomic, strong)UIButton *bt_Shop;
//  收藏
@property(nonatomic, strong)UIButton *bt_collection;
//  加入购物车
@property(nonatomic, strong)UIButton *bt_addBasket;
//  立即购买
@property(nonatomic, strong)UIButton *bt_buyNow;

@end
