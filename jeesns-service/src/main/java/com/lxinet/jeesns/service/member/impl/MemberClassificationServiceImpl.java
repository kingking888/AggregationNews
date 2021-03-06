package com.lxinet.jeesns.service.member.impl;

import com.lxinet.jeesns.core.dto.ResultModel;
import com.lxinet.jeesns.core.model.Page;
import com.lxinet.jeesns.core.service.impl.BaseServiceImpl;
import com.lxinet.jeesns.dao.member.IMemberClassificationDao;
import com.lxinet.jeesns.model.member.MemberClassification;
import com.lxinet.jeesns.service.member.IMemberClassificationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户操作选取喜欢的新闻分类
 * author:Lina
 */
@Service("memberClassificationServiceImpl")
public class MemberClassificationServiceImpl extends BaseServiceImpl<MemberClassification> implements IMemberClassificationService {
    @Resource
    private IMemberClassificationDao memberClassificationDao;

    @Override
    public Integer save(Integer mId, Integer classification) {
        return memberClassificationDao.save(mId, classification);
    }

    //首页展示
    @Override
    public ResultModel findByClassification(Page page, Integer mId) {
        List<MemberClassification> list =memberClassificationDao.findByClassification(page, mId);
        ResultModel model=new ResultModel(0,page);
        model.setData(list);
        return model;
    }

//    /**
//     * 用户查找
//     *
//     * @param mId
//     * @return
//     */
//    @Override
//    public MemberClassification find(Integer mId) {
//        return memberClassificationDao.find(mId);
//    }

//    /**
//     * 用户删除喜欢选取新闻分类
//     *
//     * @param mId
//     * @return
//     */
//    @Override
//    public Integer delete(Integer mId) {
//        return memberClassificationDao.delete(mId);
//    }


//    /**
//     * 用户更新喜欢的分类，重选？？
//     *
//     * @param Classification
//     * @param mId
//     * @return
//     */
//    @Override
//    public boolean update(String Classification, Integer mId) {
//        return memberClassificationDao.update(Classification, mId);
//    }
}
