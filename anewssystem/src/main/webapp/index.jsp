<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/inc/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@ include file="/inc/meta.jsp"%>
    <title> 首页 </title>
  </head>

  <body>
    <div style="text-align:left;float:left">
      <h1>首页</h1>
      <p><a href="${ctx}/admin/index.htm">新闻后台</a></p>
      <p><a href="${ctx}/index/index.htm">测试首页</a></p>
      <p><a href="${ctx}/sandbox/index.htm">sandbox</a></p>
    </div>
    <div>
      直接看第三个链接sandbox，前两个链接都是老版本<br>
      完全权限测试用户:test，测试密码:test<br>
      部分权限测试用户:user，测试密码:user<br>
      <hr>
      没搞定的问题<br>
      1.可以自己配置JsonGrid中每列的宽度，现在都是默认100<br>

      3.用户管理中，缺少一个关闭，打开的功能<br>

      5.后台判断帐号不能重复了，要是在前台能用ajax实现判断帐号是否重复就好了<br>
    </div>
  </body>
</html>

