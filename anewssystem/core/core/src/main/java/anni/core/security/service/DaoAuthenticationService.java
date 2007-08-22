package anni.core.security.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.sql.DataSource;

import anni.core.security.AuthenticationHelper;
import anni.core.security.resource.Resource;

import org.acegisecurity.GrantedAuthority;
import org.acegisecurity.GrantedAuthorityImpl;

import org.acegisecurity.userdetails.User;
import org.acegisecurity.userdetails.UserDetails;

import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.jdbc.object.MappingSqlQuery;


/**
 * 通过数据库方式获取User 和 Resource 实例.
 * 来自www.springside.org.cn
 *
 * @author cac
 * @author Lingo
 * @since 2007-03-22
 * @version 1.0
 */
public class DaoAuthenticationService extends JdbcDaoSupport
    implements AuthenticationService {
    /**
     * 获取用户名，密码，状态(name,passwd,status).
     */
    private String loadUsersQuery;

    /**
     * 获取相应用户名下的所有权限(role.name).
     */
    private String authoritiesByUsernameQuery;

    /**
     * 获取所有资源的资源串和资源类型(res_string, res_type).
     */
    private String loadResourcesQuery;

    /**
     * 获取相应资源下的所有权限(role.name).
     */
    private String authoritiesByResourceQuery;

    /**
     * 角色前缀.
     */
    private String rolePrefix = "";

    /**
     * 获取所有资源实例.
     *
     * @see lg.lag.security.service.AuthenticationService#getResources()
     * @return List
     */
    public List<Resource> getResources() {
        List resources = new LoadResourcesMapping(getDataSource(),
                loadResourcesQuery).execute();
        List<Resource> authResources = new ArrayList<Resource>();

        for (Iterator iter = resources.iterator(); iter.hasNext();) {
            Resource resc = (Resource) iter.next();
            List<GrantedAuthorityImpl> auths = new AuthoritiesByResourcMapping(getDataSource())
                .execute(resc.getResString());
            GrantedAuthority[] arrayAuths = AuthenticationHelper
                .convertToGrantedAuthority(auths);
            authResources.add(new Resource(resc.getResString(),
                    resc.getResType(), arrayAuths));
        }

        return authResources;
    }

    /**
     * 获取所有用户实例.
     *
     * @see lg.lag.security.service.AuthenticationService#getUsers()
     * @return List
     */
    public List<User> getUsers() {
        List users = new LoadUsersMapping(getDataSource(), loadUsersQuery)
            .execute();
        List<User> authUsers = new ArrayList<User>();

        // System.out.println(users);
        for (Iterator iter = users.iterator(); iter.hasNext();) {
            UserDetails user = (UserDetails) iter.next();
            List<GrantedAuthorityImpl> auths = new AuthoritiesByUsernameMapping(getDataSource())
                .execute(user.getUsername());
            GrantedAuthority[] arrayAuths = AuthenticationHelper
                .convertToGrantedAuthority(auths);
            authUsers.add(new User(user.getUsername(), user.getPassword(),
                    user.isEnabled(), true, true, true, arrayAuths));
        }

        return authUsers;
    }

    /**
     * @param loadUsersQueryIn 读取用户信息使用的sql语句.
     */
    public void setLoadUsersQuery(String loadUsersQueryIn) {
        loadUsersQuery = loadUsersQueryIn;
    }

    /**
     * @param authoritiesByUsernameQueryIn 根据用户名获得授权的sql语句.
     */
    public void setAuthoritiesByUsernameQuery(
        String authoritiesByUsernameQueryIn) {
        authoritiesByUsernameQuery = authoritiesByUsernameQueryIn;
    }

    /**
     * @param authoritiesByResourceQueryIn 根据资源获得授权的sql语句.
     */
    public void setAuthoritiesByResourceQuery(
        String authoritiesByResourceQueryIn) {
        authoritiesByResourceQuery = authoritiesByResourceQueryIn;
    }

    /**
     * @param loadResourcesQueryIn 获得资源的sql语句.
     */
    public void setLoadResourcesQuery(String loadResourcesQueryIn) {
        loadResourcesQuery = loadResourcesQueryIn;
    }

    /**
     * @param rolePrefixIn 角色前缀.
     */
    public void setRolePrefix(String rolePrefixIn) {
        rolePrefix = rolePrefixIn;
    }

    /**
     * Query to look up users.
     */
    protected static class LoadUsersMapping extends MappingSqlQuery {
        /**
         * 构造方法.
         *
         * @param ds DataSource
         * @param loadUsersQueryIn sql语句
         */
        protected LoadUsersMapping(DataSource ds, String loadUsersQueryIn) {
            super(ds, loadUsersQueryIn);
            compile();
        }

        /**
         * 映射行数据.
         *
         * @param rs ResultSet
         * @param rownum row number
         * @return Object
         * @throws SQLException sql异常
         */
        protected Object mapRow(ResultSet rs, int rownum)
            throws SQLException {
            String username = rs.getString(1);
            String password = rs.getString(2);
            boolean enabled = rs.getBoolean(3);
            UserDetails user = new User(username, password, enabled, true,
                    true, true,
                    new GrantedAuthority[] {
                        new GrantedAuthorityImpl("HOLDER")
                    });

            return user;
        }
    }

    /**
     * Query object to look up a user's authorities.
     */
    protected class AuthoritiesByUsernameMapping extends MappingSqlQuery {
        /**
         * 构造方法.
         *
         * @param ds DataSource
         */
        protected AuthoritiesByUsernameMapping(DataSource ds) {
            super(ds, authoritiesByUsernameQuery);
            declareParameter(new SqlParameter(Types.VARCHAR));
            compile();
        }

        /**
         * 映射行数据.
         *
         * @param rs ResultSet
         * @param rownum row number
         * @return Object
         * @throws SQLException sql异常
         */
        protected Object mapRow(ResultSet rs, int rownum)
            throws SQLException {
            String roleName = rolePrefix + rs.getString(1);
            GrantedAuthorityImpl authority = new GrantedAuthorityImpl(roleName);

            return authority;
        }
    }

    /**
     * Query to look up resources.
     */
    protected static class LoadResourcesMapping extends MappingSqlQuery {
        /**
         * 构造方法.
         *
         * @param ds DataSource
                 * @param loadResourcesQueryIn sql语句
         */
        protected LoadResourcesMapping(DataSource ds,
            String loadResourcesQueryIn) {
            super(ds, loadResourcesQueryIn);
            compile();
        }

        /**
         * 映射行数据.
         *
         * @param rs ResultSet
         * @param rownum row number
         * @return Object
         * @throws SQLException sql异常
         */
        protected Object mapRow(ResultSet rs, int rownum)
            throws SQLException {
            String resString = rs.getString(1);
            String resType = rs.getString(2);
            Resource resource = new Resource(resString, resType,
                    new GrantedAuthority[] {
                        new GrantedAuthorityImpl("HOLDER")
                    });

            return resource;
        }
    }

    /**
     * Query object to look up a resource's authorities.
     */
    protected class AuthoritiesByResourcMapping extends MappingSqlQuery {
        /**
         * 构造方法.
         *
         * @param ds DataSource
         */
        protected AuthoritiesByResourcMapping(DataSource ds) {
            super(ds, authoritiesByResourceQuery);
            declareParameter(new SqlParameter(Types.VARCHAR));
            compile();
        }

        /**
         * 映射行数据.
         *
         * @param rs ResultSet
         * @param rownum row number
         * @return Object
         * @throws SQLException sql异常
         */
        protected Object mapRow(ResultSet rs, int rownum)
            throws SQLException {
            String roleName = rolePrefix + rs.getString(1);
            GrantedAuthorityImpl authority = new GrantedAuthorityImpl(roleName);

            return authority;
        }
    }
}
