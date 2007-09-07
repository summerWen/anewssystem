package anni.asecurity.manager;

import java.util.List;

import anni.asecurity.domain.Menu;

import anni.core.dao.HibernateTreeEntityDao;


/**
 * @author Lingo.
 * @since 2007年08月18日 下午 20时19分00秒578
 */
public class MenuManager extends HibernateTreeEntityDao<Menu> {
    /**
     * 读取用户可见的菜单.
     *
     * @param userId 用户id
     * @return menu id list
     */
    public List<Integer> loadUserMenus(Long userId) {
        String hql = "select distinct menu.id from Menu menu "
            + "inner join menu.roles as role "
            + "inner join role.users as user " + "where user.id=?";

        return getSession().createQuery(hql).setLong(0, userId).list();
    }
}
