/*
 * Copyright 2002-2006 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package anni.core.web.json;

import java.util.HashMap;
import java.util.Map;

import junit.framework.TestCase;

import net.sf.jstester.JsTester;

import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.mock.web.MockServletContext;

import org.springframework.web.context.support.StaticWebApplicationContext;


/**
 * @author Andres Almiray
 */
public class JsonViewTest extends TestCase {
    private JsTester jsTester;
    private MockServletContext servletContext;
    private MockHttpServletRequest servletRequest;
    private MockHttpServletResponse servletResponse;

    public JsonViewTest(String testName) {
        super(testName);
    }

    public static void main(String[] args) {
        junit.textui.TestRunner.run(JsonViewTest.class);
    }

    public void testRenderObjectGraph() throws Exception {
        JsonView view = new JsonView();
        Map model = new HashMap();
        model.put("bool", Boolean.TRUE);
        model.put("integer", new Integer(1));
        model.put("str", "string");

        Map bean = new HashMap();
        bean.put("name", "mybean");
        bean.put("bools", new boolean[] {true, false});
        model.put("bean", bean);

        view.render(model, servletRequest, servletResponse);
        jsTester.eval(toJsScript(servletResponse));

        jsTester.assertNotNull("json");
        jsTester.assertIsObject("json");
        jsTester.assertEquals("json.bool", "true");
        jsTester.assertEquals("json.integer", "1");
        jsTester.assertEquals("json.str", "'string'");
        jsTester.assertIsObject("json.bean");
        jsTester.assertIsArray("json.bean.bools");
        jsTester.assertEquals("2", "json.bean.bools.length");
        jsTester.assertEquals("'mybean'", "json.bean.name");
    }

    public void testRenderObjectGraphWithPropertyExclusion()
        throws Exception {
        JsonView view = new JsonView();
        view.setExcludedProperties(new String[] {"bools"});

        Map model = new HashMap();
        model.put("bool", Boolean.TRUE);
        model.put("integer", new Integer(1));
        model.put("str", "string");

        Map bean = new HashMap();
        bean.put("name", "mybean");
        bean.put("bools", new boolean[] {true, false});
        model.put("bean", bean);

        view.render(model, servletRequest, servletResponse);
        jsTester.eval(toJsScript(servletResponse));

        jsTester.assertNotNull("json");
        jsTester.assertIsObject("json");
        jsTester.assertEquals("json.bool", "true");
        jsTester.assertEquals("json.integer", "1");
        jsTester.assertEquals("json.str", "'string'");
        jsTester.assertIsObject("json.bean");
        jsTester.assertIsUndefined("json.bean.bools");
        jsTester.assertEquals("'mybean'", "json.bean.name");
    }

    public void testRenderSimpleProperties() throws Exception {
        JsonView view = new JsonView();
        Map model = new HashMap();
        model.put("bool", Boolean.TRUE);
        model.put("integer", new Integer(1));
        model.put("str", "string");

        view.render(model, servletRequest, servletResponse);
        jsTester.eval(toJsScript(servletResponse));

        jsTester.assertNotNull("json");
        jsTester.assertIsObject("json");
        jsTester.assertEquals("json.bool", "true");
        jsTester.assertEquals("json.integer", "1");
        jsTester.assertEquals("json.str", "'string'");
    }

    protected void setUp() throws Exception {
        servletContext = new MockServletContext();

        StaticWebApplicationContext wac = new StaticWebApplicationContext();
        wac.setServletContext(servletContext);
        servletRequest = new MockHttpServletRequest(servletContext);
        servletResponse = new MockHttpServletResponse();

        jsTester = new JsTester();
        jsTester.onSetUp();
    }

    protected void tearDown() throws Exception {
        jsTester.onTearDown();
    }

    private String toJsScript(MockHttpServletResponse response)
        throws Exception {
        return "var json = eval('(" + response.getContentAsString()
        + ")');";
    }
}
