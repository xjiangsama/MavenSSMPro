package com.spica.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.spica.dao.UserDao;
import com.spica.entity.User;



@Controller
@RequestMapping("/user")
public class UserHandler {
	
	@Resource
    private UserDao userDao;
	
    @RequestMapping("/view")
    public String view() {
        return "main/login";
    }

    @RequestMapping("/indexview")
    public String index() {
        return "main/index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(User model, HttpSession session) {
        User user = userDao.findByUsername(model.getUsername());

        if (user == null || !user.getPassword().equals(model.getPassword())) {
            return new ModelAndView("redirect:/login.jsp");
        } else {
            session.setAttribute("user", user);
            ModelAndView mav = new ModelAndView();
            mav.setViewName("index");
            return mav;
        }
    }
    /*
    @RequestMapping(value = "/queryall", method = RequestMethod.GET)
    public ModelAndView queryAll(User model, HttpSession session) {
    	List<User> users=userDao.findAllUsers();
        session.setAttribute("users", users);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("detail");
        return mav;
    }
    */
    /**
     * 分页查询所有
     * 
     * @param pageCode
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/queryall", produces = "text/html;charset=utf-8")
    public @ResponseBody String selectAll(int pageCode, int pageSize) {
        PageHelper.startPage(pageCode, pageSize);
        List<User> slist = userDao.findAllUsers();
        PageInfo spi = new PageInfo(slist);
        int count = (int) spi.getTotal();
        String jsonStr = JSON.toJSONString( slist );
        //JSONArray json = JSONArray.fromList(slist);
        String str = "{\"total\":" + count + ",\"rows\":" + jsonStr + "}";
        return str;
    }
    
    
    
    
    
    
	
}
