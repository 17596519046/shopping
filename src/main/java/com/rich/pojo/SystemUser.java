package com.rich.pojo;
import lombok.Data;

import java.util.Date;

/**
    * system_user 实体类
    * 2020-03-11 12:30:40
   */ 
@Data
public class SystemUser {
	/**
	*主键id
	*/
	private int	id;
	/**
	*用户名
	*/
	private String	userName;
	/**
	*密码
	*/
	private String	password;
	/**
	*邮箱
	*/
	private String	email;
	/**
	*手机号
	*/
	private String	phone;
	/**
	*创建时间
	*/
	private Date createTime;
	/**
	*修改时间
	*/
	private Date updateTime;
	/**
	*角色id
	*/
	private int	roleId;
}
