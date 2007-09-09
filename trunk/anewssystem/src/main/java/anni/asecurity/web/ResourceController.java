package anni.asecurity.web;

import javax.servlet.http.HttpServletRequest;

import anni.asecurity.domain.Resource;

import anni.asecurity.manager.ResourceManager;

import anni.core.web.prototype.BaseLongController;
import anni.core.web.prototype.StreamView;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import org.springframework.web.bind.ServletRequestDataBinder;


/**
 * @author Lingo.
 * @since 2007年08月18日 下午 20时19分00秒578
 */
public class ResourceController extends BaseLongController<Resource, ResourceManager> {
    /** * logger. */
    private static Log logger = LogFactory.getLog(ResourceController.class);

    /** * constructor. */
    public ResourceController() {
        setEditView("/asecurity/resource/editResource");
        setListView("/asecurity/resource/listResource");
    }

    /**
     * 判断输入METHOD的资源内容是否有效.
     * 类.方法名，而且类必须是classpath能找到的类
     *
     * @param request 请求
     * @param command 需要绑定的command
     * @param binder 绑定工具
     * @throws Exception 异常
     */
    @Override
    protected void preBind(HttpServletRequest request, Object command,
        ServletRequestDataBinder binder) throws Exception {
        String resType = getStrParam("resType", null);

        if ("METHOD".equals(resType)) {
            String resString = getStrParam("resString", "");

            try {
                int lastDotIndex = resString.lastIndexOf('.');
                String className = resString.substring(0, lastDotIndex);
                //String methodName = resString.substring(lastDotIndex + 1);

                //Class rescClass = Class.forName(className);
                Class.forName(className);
            } catch (Exception ex) {
                binder.getBindingResult()
                      .rejectValue("resString", "内容不正确：" + ex.toString(),
                    new Object[] {ex.getMessage()}, ex.toString());
            }
        }
    }

    /** * index. */
    public void index() {
        mv.setViewName("asecurity/resource/index");
    }

    /**
     * onInsert.
     *
     * @throws Exception 写入response可能出现异常
     */
    @Override
    public void onInsert() throws Exception {
        response.getWriter().print("{success:true,info:\"success\"}");
        mv.setView(new StreamView("application/json"));
    }

    /**
     * onUpdate.
     *
     * @throws Exception 写入response可能出现异常
     */
    @Override
    public void onUpdate() throws Exception {
        response.getWriter().print("{success:true,info:\"success\"}");
        mv.setView(new StreamView("application/json"));
    }
}
