package anni.core.security.cache;

import java.util.*;

import anni.core.security.resource.*;
import anni.core.security.service.*;

import junit.framework.TestCase;

import net.sf.ehcache.*;

import org.acegisecurity.GrantedAuthority;

import org.acegisecurity.providers.dao.UserCache;
import org.acegisecurity.providers.dao.cache.EhCacheBasedUserCache;

import org.acegisecurity.userdetails.User;
import static org.easymock.EasyMock.*;
public class AcegiCacheManagerFactoryBeanTest extends TestCase {
    AcegiCacheManagerFactoryBean bean = null;
    EhCacheBasedResourceCache resourceCache = null;
    EhCacheBasedUserCache userCache = null;
    ResourceDetails resourceDetails = null;
    AcegiCacheManager manager = null;
    Cache userEhCache = null;
    Cache resourceEhCache = null;
    AuthenticationService service = null;

    @Override
    protected void setUp() {
        bean = new AcegiCacheManagerFactoryBean();
        resourceCache = new EhCacheBasedResourceCache();
        userCache = new EhCacheBasedUserCache();
        resourceDetails = new Resource("1", "url", new GrantedAuthority[0]);
        userEhCache = new Cache("test user", 1, false, false, 0, 0);
        resourceEhCache = new Cache("test resource", 1, false, false, 0, 0);
        service = createMock(AuthenticationService.class);
        userEhCache.initialise();
        resourceEhCache.initialise();

        userCache.setCache(userEhCache);
        resourceCache.setCache(resourceEhCache);
        resourceCache.putResourceInCache(resourceDetails);
        manager = new AcegiCacheManager(userCache, resourceCache);
        bean.setResourceCache(resourceCache);
        bean.setUserCache(userCache);
        bean.setAcegiCacheManager(manager);
        bean.setAuthenticationService(service);
    }

    @Override
    protected void tearDown() {
    }

    public void testTrue() {
        assertTrue(true);
    }

    public void testDefault() throws Exception {
        bean = new AcegiCacheManagerFactoryBean();

        assertTrue(bean.isSingleton());
        assertNull(bean.getObject());
        assertEquals(AcegiCacheManager.class, bean.getObjectType());
    }

    public void testAfterPropertiesSet() throws Exception {
        List<User> userList = new ArrayList<User>();
        User user = new User("user", "123456", true, true, true, true,
                new GrantedAuthority[0]);
        userList.add(user);

        List<Resource> resourceList = new ArrayList<Resource>();
        Resource resouce = new Resource("1", "url", new GrantedAuthority[0]);
        resourceList.add(resouce);

        service = createMock(AuthenticationService.class);
        expect(service.getUsers()).andReturn(userList);
        expect(service.getResources()).andReturn(resourceList);
        replay(service);

        bean.setAuthenticationService(service);
        bean.afterPropertiesSet();
        verify();
    }
}
