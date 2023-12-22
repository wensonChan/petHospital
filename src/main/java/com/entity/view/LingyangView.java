package com.entity.view;

import com.entity.LingyangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 领养
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-12-02 20:04:19
 */
@TableName("lingyang")
public class LingyangView  extends LingyangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public LingyangView(){
	}
 
 	public LingyangView(LingyangEntity lingyangEntity){
 	try {
			BeanUtils.copyProperties(this, lingyangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
