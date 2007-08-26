package anni.core.security.resource;

import java.util.*;

import junit.framework.TestCase;

import org.acegisecurity.*;

import org.acegisecurity.providers.dao.UserCache;

import org.acegisecurity.userdetails.UserDetails;
import org.acegisecurity.userdetails.UserDetailsService;
import static org.easymock.EasyMock.*;

import org.easymock.classextension.EasyMock;


public class ResourceTest extends TestCase {
    Resource resource = null;

    @Override
    protected void setUp() {
        resource = new Resource("/", "URL", new GrantedAuthorityImpl[0]);
    }

    @Override
    protected void tearDown() {
    }

    public void testTrue() {
        assertTrue(true);
    }

    public void testDefault() {
        resource.setResString("/index.jsp");
        resource.setResType("METHOD");

        int hashCode = resource.hashCode();
    }

    public void testHashCode() {
        resource.setResString(null);

        int hashCode = resource.hashCode();
    }

    public void testEquals() {
        assertFalse(resource.equals(null));
    }

    public void testEquals2() {
        Resource resource2 = new Resource("/", "URL",
                new GrantedAuthorityImpl[0]);
        assertTrue(resource.equals(resource2));
    }

    public void testEquals3() {
        Resource resource2 = new Resource("/aaaa", "METHOD",
                new GrantedAuthorityImpl[0]);
        assertFalse(resource.equals(resource2));

        resource2 = new Resource("/", "METHOD", new GrantedAuthorityImpl[0]);
        assertFalse(resource.equals(resource2));

        resource2 = new Resource("/", "URL",
                new GrantedAuthorityImpl[] {new GrantedAuthorityImpl("all")});
        assertFalse(resource.equals(resource2));
    }
}
