package com.lxinet.jeesns.dao.member;

import com.lxinet.jeesns.core.dao.BaseMapper;
import com.lxinet.jeesns.dao.common.IBaseDao;
import com.lxinet.jeesns.model.member.MemberToken;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

/**
 * Created by Lina.
 */
public interface IMemberTokenDao extends BaseMapper<MemberToken> {

    MemberToken getByToken(@Param("token") String token);

    Integer save(@Param("memberId") Integer memberId, @Param("token") String token, @Param("expireTime") Date expireTime);

}