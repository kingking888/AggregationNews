<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${member.name}主页 - ${SITE_NAME}</title>
    <meta name="keywords" content="${SITE_KEYS}"/>
    <meta name="description" content="${SITE_DESCRIPTION}"/>
    <meta name="author" content="Lina"/>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="${basePath}/res/common/css/zui.min.css" rel="stylesheet">
    <link href="${basePath}/res/front/css/app.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${basePath}/res/common/js/html5shiv.min.js"></script>
    <script src="${basePath}/res/common/js/respond.min.js"></script>
    <![endif]-->
    <script src="${basePath}/res/common/js/jquery-2.1.1.min.js"></script>
    <script src="${basePath}/res/common/js/zui.min.js"></script>
    <script src="${basePath}/res/plugins/layer/layer.js"></script>
    <script src="${basePath}/res/common/js/jquery.form.js"></script>
    <script src="${basePath}/res/common/js/jeesns.js?v1.4"></script>
    <script src="${basePath}/res/common/js/extendPagination.js"></script>
    <script src="${basePath}/res/modules/mem.js"></script>
    <script src="${basePath}/res/plugins/emoji/js/emojis.js"></script>
</head>

<body class="gray-bg">
<#include "/${frontTemplate}/common/header.ftl"/>
<div class="wrapper wrapper-content">
    <#include "/${frontTemplate}/common/memberInfo.ftl"/>
    <div class="container">
        <div class="row m-t-10">
            <div class="col-sm-2 col-xs-12">
                <ul class="list-group">
                    <li class="list-group-item"><a href="${basePath}/u/${member.id}">选择的新闻分类</a></li>
                <#--<li class="list-group-item"><a href="${basePath}/picture/album/${member.id}">相册</a></li>-->
                    <li class="list-group-item"><a href="${basePath}/u/${member.id}/home/fans">粉丝</a></li>
                    <li class="list-group-item"><a href="${basePath}/u/${member.id}/home/follows">关注</a></li>
                    <#--<li class="list-group-item"><a href="${basePath}/u/${member.id}/home/article">文章</a></li>-->
                    <#--<li class="list-group-item"><a href="${basePath}/u/${member.id}/home/groupTopic">群帖</a></li>-->
                    <#--<li class="list-group-item"><a href="${basePath}/u/${member.id}/home/weibo">微博</a></li>-->
                    <#--<li class="list-group-item"><a href="${basePath}/u/${member.id}/home/group">关注群组</a></li>-->
                    <li class="list-group-item"><a href="${basePath}/u/${member.id}/home/comment">已评论的新闻</a></li>
                    <li class="list-group-item"><a href="${basePath}/u/${member.id}/home/collect">已收藏的新闻</a></li>
                </ul>
            </div>
            <div class="col-sm-10 col-xs-12">
                <div class="col-xs-12 white-bg">
                    <div class="list list-condensed">
                        <header>
                            <h3><i class="icon-list-ul"></i> 选择的新闻分类</h3>
                        </header>
                        <div class="items items-hover">
                            <#--<#list actionLogModel.data as actionLog>-->
                            <div class="item">
                                <div class="item-heading">
                                    <#--<div class="pull-right"><span-->
                                            <#--class="text-muted">${actionLog.createTime?string('yyyy-MM-dd HH:mm:ss')}</span>-->
                                    <#--</div>-->
                                    <#--<h4><a href="${basePath}/u/${actionLog.member.id}"><strong>${actionLog.member.name}</strong></a> ${actionLog.action.log}：</h4>-->
                                    <form class="form-horizontal jeesns_form" role="form" action="${basePath}/member/save" method="post" onsubmit="ckUpdate();>

                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="1"> 财经
                                            </label>
                                        </div>
                                        <div class="checkbox" >
                                            <label>
                                                <input type="checkbox" value="2">娱乐
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="3">综合
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="4">健康
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="5">科学
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="6">运动
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="7">科技
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="8">技术
                                            </label>
                                        </div>
                                        <button type="submit"  class="btn btn-primary">提交</button>
                                    </form>
                                </div>
                                <#--<div class="item-content">-->
                                    <#--<div class="text">-->
                                         <#--<#if actionLog.type==1>-->
                                             <#--<a href="${basePath}/article/detail/${actionLog.foreignId}"-->
                                                <#--target="_blank">${actionLog.remark}</a>-->
                                         <#--<#elseif actionLog.type==2>-->
                                                    <#--<p>${actionLog.remark}</p>-->
                                                    <#--<a href="${weiboPath}/detail/${actionLog.foreignId}"-->
                                                       <#--target="_blank">查看</a>-->
                                         <#--<#elseif actionLog.type==4>-->
                                                    <#--<a href="${groupPath}/topic/${actionLog.foreignId}"-->
                                                       <#--target="_blank">${actionLog.remark}</a>-->
                                         <#--</#if>-->
                                    <#--</div>-->
                                <#--</div>-->
                            </div>
                            <#--</#list>-->
                            <ul class="pager pagination pagination-sm no-margin pull-right"
                                url="${basePath}/member/"
                                currentPage="${actionLogModel.page.pageNo}"
                                pageCount="${actionLogModel.page.totalPage}">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<#include "/${frontTemplate}/common/footer.ftl"/>
<script type="text/javascript">
    $(function () {
        $(".pagination").jeesns_page("jeesnsPageForm");
        mem.isFollowed(${member.id}, "${basePath}");
        $(".member-follows").click(function () {
            mem.follows($(this), "${basePath}")
        });

    });
</script>
</body>
</html>