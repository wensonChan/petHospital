
package com.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.TokenEntity;
import org.apache.ibatis.annotations.Select;

/**
 * token
 */
public interface TokenDao extends BaseMapper<TokenEntity> {
	
	List<TokenEntity> selectListView(@Param("ew") Wrapper<TokenEntity> wrapper);

	List<TokenEntity> selectListView(Pagination page,@Param("ew") Wrapper<TokenEntity> wrapper);

	@Insert("insert into TOKEN values (#{id},#{userid},#{username},#{tablename},#{role},#{token},#{addtime},#{expiratedtime})")
	void insertToken(@Param("id")Long id, @Param("userid")Long userid, @Param("username")String username, @Param("tablename")String tablename, @Param("role")String role, @Param("token")String token, @Param("addtime")Date addtime,@Param("expiratedtime")Date expiratedtime);

	@Select("SELECT MAX(ID) FROM WENSON.TOKEN")
	Long selectTotal(Long userid);
}
