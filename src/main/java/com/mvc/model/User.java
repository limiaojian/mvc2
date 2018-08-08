package com.mvc.model;

import com.baomidou.mybatisplus.annotations.TableName;
import lombok.*;

import java.io.Serializable;
import java.util.Date;

/**
 * @author miaojian_li
 * @create 2018/8/7 - 12:28
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class User implements Serializable{
	private int id;
	private String username;
	private String password;
	private Date createdate;
}
