2007-08-09 Lingo
----------------


������Ż������ӹ��ܣ��Զ����ɵĲ��Ը����ʴﵽ100%

���̼�Ҫ��ant������antĿ¼�£��õ���javaԴ������srcĿ¼��
1.prepare����.build-prepare.xml
1.1.�����ֹ�������excel����hsqldb�Ľ���ű�
    ant����prepare-excel-hsqldb.xml
    java���룺anni.tools.GenHsqldb
    �����ļ���target/test.sql
1.2.����test.sql����hsqldb���ݿ�
    ant����prepare-hsqldb.xml
    java���룺��
    �����ļ���target/test.properties,target/test.script
1.3.����hibernate���򹤳���Ҫ��hibernate.reveng.xml
    ant����prepare-excel-hibernate-reveng.xml
    java���룺anni.tools.GenHibernateReveng
    �����ļ���target/hibernate.reveng.xml
1.4.����hsqldb���ݿ��hibernate.reveng.xml����pojo
    ant����prepare-hibernatetools.xml
    java���룺��
    �����ļ���target/gen/**/domain/*.java
1.5.������һ�����ɵ�pojo������pojo�������ɷ���checkstyle��׼��pojo�Լ���Ӧ��Ԫ����
    ant����prepare-compile-domain.xml
    java���룺anni.tools.GenDomain
    �����ļ���target/${project.name}/src/main/java/**/domain/*.java
              target/${project.name}/src/test/java/**/domain/*.java
2.gen����
2.1.����maven2������Ҫ���ļ����Լ�������Դ
    ant����gen-pom.xml
    java���룺��
    �����ļ���target/${project.name}/**
2.2.����package.html������manager�࣬controller�࣬��Ӧ��Ԫ���ԣ�manager��controller�����ļ�
    ant����gen-manager.xml
    java���룺anni.tools.GenManager
    �����ļ���target/${project.name}/src/main/java/**/manager/*.java
              target/${project.name}/src/main/java/**/web/*.java
              target/${project.name}/src/test/java/**/manager/*.java
              target/${project.name}/src/test/java/**/web/*.java
              target/${project.name}/src/main/java/**/package.html
2.3.����freemarkerģ�壬��commons-validator�����ļ�
    ant����gen-freemarker.xml
    java���룺anni.tools.GenFreemarker
    �����ļ���target/${project.name}/src/main/webapp/**.ftl
              target/${project.name}/src/main/resources/validation/validation.xml
2.4.���������ļ�
    ant����gen-excel-xml.xml
    java���룺anni.tools.GenXml
    �����ļ���target/${project.name}/src/main/resources/spring/applicationContext-hibernate.xml
              target/${project.name}/src/main/resources/spring/db/hibernate-mock.xml
              target/${project.name}/src/hibernate.cfg.xml
              target/${project.name}/src/main/native2ascii/validation.properties
              target/${project.name}/src/main/native2ascii/validation_zh_CN.properties
              target/${project.name}/src/main/webapp/WEB-INF/menu-config.xml
              target/${project.name}/src/main/webapp/freemarker/admin/menu.ftl
              target/${project.name}/src/test/resources/xls/export.xls
3.assemble����


2007-06-12 Lingo
----------------


�ܽ�֮ǰ���еĴ���������������Ϊ��ant�ű�Ϊ�������ȫ������������
��Ϊ���¼������裺

1.excel�ı�ṹ��Ҫ�ֹ�����
2.�����ֹ����ܵ�excel����hsqldb���ݿ��sql�ű�
3.����sql�ű�������hsqldb�����ݿ��ļ�
4.����excel����hibernate.reveng.xml��i18nʹ�õ�properties�ļ�
5.��������hsqldb���ݿ��ļ�ʹ��hibernatetools����pojo
6.����excel����manager��webcontroller�����⸴������package.html
7.����ģ������һ��maven2�Ĺ��̽ṹ������������������ļ�
8.����pojo��excel����index.jsp��freemarker
9.�����װ

