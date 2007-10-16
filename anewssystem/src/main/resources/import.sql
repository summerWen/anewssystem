insert into A_NEWS(id,content,editor,hit,image,link,name,source,status,subtitle,summary,update_date,category_id) values(1,'dd','',null,'','/anews/html/3/2007/09/17/1.html','dd','【本站原创】',2,'ddd','dd','2007-09-17 00:00:00.000000000',3);
insert into A_NEWS(id,content,editor,hit,image,link,name,source,status,subtitle,summary,update_date,category_id) values(2,'sadf','',null,'','/anews/html/2/2007/10/06/2.html','tt','【本站原创】',3,'est','tset','2007-10-06 00:00:00.000000000',1);
insert into A_NEWS(id,content,editor,hit,image,link,name,source,status,subtitle,summary,update_date,category_id) values(3,'&nbsp;654','',null,'null','','1454','【本站原创】',null,'45','4541','2007-10-06 00:00:00.000000000',null);
insert into A_NEWS(id,content,editor,hit,image,link,name,source,status,subtitle,summary,update_date,category_id) values(4,'&nbsp;54','',null,'null','','12','【本站原创】',null,'1','564','2007-10-06 00:00:00.000000000',null);
insert into A_NEWS(id,content,editor,hit,image,link,name,source,status,subtitle,summary,update_date,category_id) values(5,'&nbsp;656','',null,'null','','6','【本站原创】',3,'54','54','2007-10-06 00:00:00.000000000',1);
insert into A_NEWS(id,content,editor,hit,image,link,name,source,status,subtitle,summary,update_date,category_id) values(6,'&nbsp;唐山特别特别好','',null,'null','/anews/html/3/2007/10/12/6.html','唐山好','【本站原创】',3,'唐山很好','唐山特别好','2007-10-12 00:00:00.000000000',3);
insert into A_NEWS(id,content,editor,hit,image,link,name,source,status,subtitle,summary,update_date,category_id) values(7,'&nbsp;tse','临远',null,'null','/anews/html/3/2007/10/12/7.html','test','【本站原创】',3,'tset','tset','2007-10-12 00:00:00.000000000',3);

insert into A_NEWS_CATEGORY(id,bit_code,char_code,name,status,the_sort,parent_id) values(1,72057594037927936,'null','地方新闻',null,0,null);
insert into A_NEWS_CATEGORY(id,bit_code,char_code,name,status,the_sort,parent_id) values(2,72339069014638592,'null','河北新闻',null,1,1);
insert into A_NEWS_CATEGORY(id,bit_code,char_code,name,status,the_sort,parent_id) values(3,72340168526266368,'null','唐山新闻',null,2,2);


insert into A_NEWS_CONFIG(id,category_strategy,comment_need_audit,could_comment,news_need_audit,template_name) values(1,0,0,0,0,'extjs');

insert into A_NEWS_NEWSTAG(newstag_id,news_id) values(2,2);
insert into A_NEWS_NEWSTAG(newstag_id,news_id) values(3,2);
insert into A_NEWS_NEWSTAG(newstag_id,news_id) values(4,2);
insert into A_NEWS_NEWSTAG(newstag_id,news_id) values(5,7);

insert into A_NEWS_TAG(id,name,the_sort) values(2,'222',null);
insert into A_NEWS_TAG(id,name,the_sort) values(3,'2',null);
insert into A_NEWS_TAG(id,name,the_sort) values(4,'444',null);
insert into A_NEWS_TAG(id,name,the_sort) values(5,'test',null);

insert into A_SECURITY_DEPT(id,descn,name,the_sort,parent_id) values(1,'','技术部',0,null);
insert into A_SECURITY_DEPT(id,descn,name,the_sort,parent_id) values(2,'市场','市场部',4,null);
insert into A_SECURITY_DEPT(id,descn,name,the_sort,parent_id) values(3,'销售的部门，卖不出去可不行啊','销售部',5,null);
insert into A_SECURITY_DEPT(id,descn,name,the_sort,parent_id) values(4,'null','研发部',2,1);
insert into A_SECURITY_DEPT(id,descn,name,the_sort,parent_id) values(5,'','产品部',1,1);

insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(44,'11','./','set.gif','sandbox',13,'1',null);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(45,'','../newstag2/dialogManage.htm','user.gif','体验dialog',24,'',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(46,'','../newstag2/inlineManage.htm','user.gif','体验editor',23,'',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(47,'','./','set.gif','新闻发布',0,'',null);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(48,'','../newscategory/index.htm','user.gif','新闻分类管理',2,'',47);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(50,'管理新闻','../news/index.htm','user.gif','管理新闻',3,'管理新闻',47);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(52,'','../newstag/index.htm','user.gif','管理关键字',4,'',47);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(53,'新闻属性设置','../newsconfig/index.htm','user.gif','新闻属性设置',5,'新闻属性设置',47);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(54,'','../template/dd.htm','user.gif','设置模板',22,'',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(56,'','./','set.gif','权限设置',6,'',null);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(57,'','../user/index.htm','user.gif','管理用户',12,'',56);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(58,'','../resource/index.htm','user.gif','管理资源',11,'',56);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(59,'','../role/index.htm','user.gif','管理角色',10,'',56);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(60,'','../menu/index.htm','user.gif','管理菜单',7,'',56);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(61,'','../sandbox/datagrid.htm','user.gif','DataGrid',21,'',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(62,'部门','../dept/index.htm','user.gif','管理部门',8,'部门',56);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(63,'','../widgets/lingo/jsontree/Ext.lingo.JsonTree.html','user.gif','Ext.lingo.JsonTree',19,'',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(64,'','../widgets/lingo/jsongrid/Ext.lingo.JsonGrid.html','user.gif','Ext.lingo.JsonGrid',18,'',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(65,'带选择框的树','../widgets/lingo/checkboxtree/checkboxtree.html','user.gif','CheckBoxTree',20,'带选择框的树',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(66,'两个表格间拖动','../widgets/lingo/form/ddgrid.html','user.gif','grid拖拽',17,'两个表格间拖动',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(67,'切换输入框','../widgets/lingo/form/switchField.html','user.gif','切换输入框',16,'切换输入框',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(68,'tree与grid拖拽','../widgets/lingo/form/ddtree2.html','user.gif','tree与grid拖拽',26,'tree与grid拖拽',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(69,'tree与grid拖拽，不知道为啥失败','../widgets/lingo/form/ddtree.html','user.gif','tree与grid拖拽，不知道为啥失败',25,'tree与grid拖拽，不知道为啥失败',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(70,'组织结构图','../dept/orgmap.htm','user.gif','组织结构图',9,'组织结构图',56);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(71,'树形下拉框','../widgets/lingo/form/treeField.html','user.gif','树形下拉框',15,'树形下拉框',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(72,'级联combobox','../widgets/lingo/form/room.html','user.gif','级联combobox',14,'级联combobox',44);
insert into A_SECURITY_MENU(id,descn,url,image,name,the_sort,qtip,parent_id) values(73,'审核新闻','../news/manage.htm','user.gif','审核新闻',1,'审核新闻',47);

insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(47,2);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(48,2);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(50,2);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(56,2);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(57,2);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(58,2);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(47,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(48,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(50,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(52,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(53,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(56,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(57,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(58,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(59,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(60,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(62,3);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(44,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(45,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(46,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(47,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(48,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(50,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(52,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(53,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(54,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(56,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(57,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(58,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(59,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(60,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(61,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(62,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(63,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(64,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(65,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(66,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(67,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(68,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(69,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(70,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(71,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(72,4);
insert into A_SECURITY_MENU_ROLE(menu_id,role_id) values(73,4);

insert into A_SECURITY_RESOURCE(id,descn,name,res_string,res_type) values(2,'后台管理','admin','/admin/**','URL');
insert into A_SECURITY_RESOURCE(id,descn,name,res_string,res_type) values(3,'资源管理','resource','/resource/**','URL');
insert into A_SECURITY_RESOURCE(id,descn,name,res_string,res_type) values(4,'用户管理','user','/user/**','URL');
insert into A_SECURITY_RESOURCE(id,descn,name,res_string,res_type) values(5,'角色管理','role','/role/**','URL');
insert into A_SECURITY_RESOURCE(id,descn,name,res_string,res_type) values(6,'菜单管理','menu','/menu/**','URL');
insert into A_SECURITY_RESOURCE(id,descn,name,res_string,res_type) values(7,'部门管理','dept','/dept/**','URL');

insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(2,2);
insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(3,2);
insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(4,2);
insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(5,2);
insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(7,2);
insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(2,4);
insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(3,4);
insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(4,4);
insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(5,4);
insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(6,4);
insert into A_SECURITY_RESOURCE_ROLE(resource_id,role_id) values(7,4);

insert into A_SECURITY_ROLE(id,descn,name) values(2,'管理员','ROLE_ADMIN');
insert into A_SECURITY_ROLE(id,descn,name) values(3,'用户','ROLE_USER');
insert into A_SECURITY_ROLE(id,descn,name) values(4,'测试用户','ROLE_TEST');

insert into A_SECURITY_ROLE_USER(role_id,user_id) values(2,22);
insert into A_SECURITY_ROLE_USER(role_id,user_id) values(3,22);
insert into A_SECURITY_ROLE_USER(role_id,user_id) values(4,22);
insert into A_SECURITY_ROLE_USER(role_id,user_id) values(3,27);
insert into A_SECURITY_ROLE_USER(role_id,user_id) values(2,29);
insert into A_SECURITY_ROLE_USER(role_id,user_id) values(3,29);
insert into A_SECURITY_ROLE_USER(role_id,user_id) values(4,29);
insert into A_SECURITY_ROLE_USER(role_id,user_id) values(3,30);

insert into A_SECURITY_USER(id,birthday,code,descn,duty,email,mobile,password,sex,status,tel,truename,username,dept_id) values(22,'2007-09-23 00:00:00.000000000','null','test','无','echo_o@163.com','11111111111','098f6bcd4621d373cade4e832627b4f6','0','0','111111','test','test2',1);
insert into A_SECURITY_USER(id,birthday,code,descn,duty,email,mobile,password,sex,status,tel,truename,username,dept_id) values(23,'2007-09-27 00:00:00.000000000','null','test','sdf','test','sdfasdf','098f6bcd4621d373cade4e832627b4f6','0','0','asdfasdf','afdasdf','test1',3);
insert into A_SECURITY_USER(id,birthday,code,descn,duty,email,mobile,password,sex,status,tel,truename,username,dept_id) values(27,'2007-09-27 00:00:00.000000000','null','销售部的aaa','aa','aa','aaa','aa','0','0','d','aaa','aaa',3);
insert into A_SECURITY_USER(id,birthday,code,descn,duty,email,mobile,password,sex,status,tel,truename,username,dept_id) values(28,'2007-09-27 00:00:00.000000000','null','','222','222','22','2222222','1','0','222','22222','122222',5);
insert into A_SECURITY_USER(id,birthday,code,descn,duty,email,mobile,password,sex,status,tel,truename,username,dept_id) values(29,'2007-09-27 00:00:00.000000000','null','test','tset','test','test','098f6bcd4621d373cade4e832627b4f6','0','1','test','临远','test',1);
insert into A_SECURITY_USER(id,birthday,code,descn,duty,email,mobile,password,sex,status,tel,truename,username,dept_id) values(30,'2007-09-28 00:00:00.000000000','null','小兵','小兵','echo_o@163.com','11111111111','ee11cbb19052e40b07aac0ca060c23ee','null','1','11111111','user','user',2);

insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(1,'2007-10-08 00:00:00.000000000','Lingo','b2b启动','','b2b启动',1,1,1,'anyone','2007-10-08 00:00:00.000000000',9);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(2,'2007-10-08 00:00:00.000000000','Lingo','询价功能不完整，原来是与留言做在一起，现在询价的功能比留言多出了几部分<br><ol><li>可以添加订购量，订购金额</li><li>可以从产品属性中选择感兴趣的部分，使用checkbox选择</li><li>与留言都存在的问题，没有验证码。<br></li></ol>','','询价部分功能不完整',2,2,1,'anyone','2007-10-08 00:00:00.000000000',9);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(3,'2007-10-08 00:00:00.000000000','Lingo','抄袭了无数次springside的权限模型，可还是不知道如何做acegi的ACL控制。在论坛上看到cac老大说acegi-1.0.3之后使用了新的ACL模型，还可以让人接受，可自己去找了acegi-1.0.5的例子，感觉丝毫没有头绪的感觉。<br>而现在新闻发布，其实需要使用ACL实现，多个内容发布员发布新闻，需要提供草稿箱，垃圾箱。站点管理员进行审核，推荐，隐藏。<br>再有一点，看到虎牙子这个名词，是说ACL进行后置验证，在分页时出现，每页数据数不一致的情况，但没有找到解决方法。<br>不过新闻里好解决这个问题，只要在查询的时候只查询属于自己的新闻就好了，配置ACL的时候，给用户自己所有的文章的权限<br><br>放入最基本配置文件，目前还没有添入数据表结构和实际操作的功能，打算在0.0.3再考虑。<br><br>','','欠缺ACL功能',2,2,2,'anyone','2007-10-12 00:00:00.000000000',12);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(4,'2007-10-08 00:00:00.000000000','Lingo','因为使用了extjs做前台，以前使用的extremetable,struts-menu都没用了，需要统一重构，把这些用不到的东西删除，这样也可以减小发布包的大小。<br><br>初步计划：<br><ol><li>删除struts-menu及其依赖库，包括velocity</li><li>删除fckeditor的js库，及依赖包jar</li><li>删除jscalendar的js库</li><li>考虑用spring自己的aop替换aspectj，因为aspectj太大了。<br></li></ol>','','项目重构',1,1,0,'anyone','2007-10-13 00:00:00.000000000',10);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(5,'2007-10-09 00:00:00.000000000','Lingo','角色管理页面，选择一个角色后，按选择菜单按钮，第一次会报错，并且弹不出对话框，第二次会成功弹出对话框。<br><br>问题在页面中多了一个&lt;div id="menuDialog"&gt;&lt;/div&gt;标签，现在Ext.lingo.FormUtils.createTabedDialog会根据传入的id自动生成一个对话框的div放在body的最后，第一次选择菜单，会根据id得到页面中定义的空的div，就会出错，不知道为何，第二次得到的就是正确的dialog了了。<br><br>删除多余的div后，问题解决。<br>','','角色管理，配置菜单出错',1,1,1,'anyone','2007-10-09 00:00:00.000000000',10);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(6,'2007-10-10 00:00:00.000000000','Lingo','grid下方的pagingToolbar，可以使用comboBox选择分页条数。<br>参考extjs.com上提供的PageSizePlugin，这个插件是基于ext-2.0的，为了让它适用于ext-1.1做了一些修改。2.0的插件机制更令人心动。<br>','','表格可选择分页条数',1,1,1,'anyone','2007-10-10 00:00:00.000000000',10);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(7,'2007-10-08 00:00:00.000000000','Lingo','grid翻页以后，上一页选择的checkbox状态就会丢失。<br><br>需要设置一个功能让翻页的时候可以保存已选中行的状态，并且在翻回页的时候，显示那些已选中的行。<br><br>三个问题：<br><ol><li>翻页的时候，记录历史页选择的项目id</li><li>初始化的时候，让已经选中过的列，直接复制到this.historyIds里<br></li><li>返回历史页时，让已选择项目显示为已选择状态</li></ol>说实话，弄出来的东西，给我的感觉很不好，但非要这个效果不可的话，也只好先这么凑合了，等待评测。<br>','','grid在翻页的时候保存checkbox状态',1,1,1,'anyone','2007-10-13 00:00:00.000000000',10);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(8,'2007-10-10 00:00:00.000000000','Lingo','目前，商机提交成功后，直接跳转到管理商机。<br>现在需要在成功后进入一个提示成功的页面。<br>','','添加商机后，转入提示成功页面',2,1,1,'anyone','2007-10-11 00:00:00.000000000',9);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(9,'2007-10-10 00:00:00.000000000','Lingo','CheckBoxGrid在ie中显示，checkbox的位置出现错误，而且将整行撑大，使整体表格异常难看。<br>参考以前得到的checkboxtree中的css，对每个checkbox加上对ie的特别处理，保证显示正常。<br>','','checkboxgrid在ie中出现错位',1,1,1,'anyone','2007-10-10 00:00:00.000000000',10);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(10,'2007-10-11 00:00:00.000000000','Lingo','据说网站帮助页面，不管后台输入多少信息，前台只显示两条。<br>尚未证实<br><br>','','网站帮助只显示两条帮助信息',2,1,0,'anyone','2007-10-11 00:00:00.000000000',9);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(11,'2007-10-11 00:00:00.000000000','Lingo','首页最新商机，使用ajax轮转信息的部分，现在每天都只显示商机标题。<br>需要加上：【中方或俄方供应或需求的标志】，标题，发布时间，发布公司<br><br>最右边加上发布信息的链接。<br>','','首页最新商机缺少信息',2,1,0,'anyone','2007-10-11 00:00:00.000000000',9);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(12,'2007-10-11 00:00:00.000000000','Lingo','新增时，提交时间和更新时间，总是与上次提交的任务时间相同，而不是当前日期。<br>怀疑是JsonGrid的问题，还要检查一下JsonTree是不是有同样问题。估计是对DateField初始化时出现了问题。<br><br>直接在DateField上调用reset()会变成空值，还需要单独判断date然后赋予一个默认值。<br>','','新增时提交更新时间不是当前时间',1,1,1,'anyone','2007-10-11 00:00:00.000000000',11);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(13,'2007-10-11 00:00:00.000000000','Lingo','暂时用不到。','','frank新建工程的wizard很帅',1,1,2,'anyone','2007-10-11 00:00:00.000000000',11);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(14,'2007-10-11 00:00:00.000000000','Lingo','暂时用不到。','','frank多tab查看项目很帅',1,1,2,'anyone','2007-10-11 00:00:00.000000000',11);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(15,'2007-10-11 00:00:00.000000000','Lingo','网站助手中的公司介绍和联系方式，都需要审核才能发布到网上。','','公司信息和联系方法都需要审核',2,2,0,'anyone','2007-10-11 00:00:00.000000000',9);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(16,'2007-10-12 00:00:00.000000000','Lingo','交易管理中，现在只有我是买家和我是卖家两个功能，现在需要添加发送订单功能。','','添加发送订单功能',1,1,0,'anyone','2007-10-12 00:00:00.000000000',9);
insert into A_TRACKER_ISSUE(id,add_time,assign_to,content,file,name,priority,severity,status,submit_by,update_date,project_id) values(17,'2007-10-12 00:00:00.000000000','Lingo','现在添加联系方式后，没有任何提示，需要添加成功修改的提示','','修改联系方式后，添加修改成功提示',1,1,0,'anyone','2007-10-12 00:00:00.000000000',9);

insert into A_TRACKER_PROJECT(id,name,summary,the_sort,founder) values(9,'b2b','<font face="仿宋">中俄商务贸易网<br>从5月底到呼</font><font face="仿宋">和浩特以后，就一直在做的东西，启动很不顺利，慢慢来吧。</font><br>',null,'lingo');
insert into A_TRACKER_PROJECT(id,name,summary,the_sort,founder) values(10,'新闻发布[anews]','',null,'lingo');
insert into A_TRACKER_PROJECT(id,name,summary,the_sort,founder) values(11,'项目跟踪[atracker]','',null,'lingo');
insert into A_TRACKER_PROJECT(id,name,summary,the_sort,founder) values(12,'权限[asecurity]','抄袭springside-2.0项目sandbox下的security模块，完全抄袭了RBAC模型。<br>可cac老大没有演示咋用ACL，所以没抄到。<br>',null,'lingo');

