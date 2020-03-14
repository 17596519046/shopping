package com.rich.vo;

import lombok.Data;

@Data
public class BuyCarInfo {

    /***
     * 商品名称
     */
    private String goodsName;
    /***
     * 商品价格
     */
    private String price;
    /***
     * 商品购买数量
     */
    private int num;
    /***
     * 商品图片地址
     */
    private String img;

}
