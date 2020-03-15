package com.rich.pojo;

import lombok.Data;

/**
    * order_info 瀹炰綋绫籠r
    * 2020-03-14 14:47:21
   */
@Data
public class OrderInfo{
	/**
	*id
	*/
	private int	id;
	/**
	*商品Id
	*/
	private int	goosId;
	/**
	*数量
	*/
	private int	num;
	/**
	*地址Id
	*/
	private int	addressInfoId;

	private String orderCode;
}
