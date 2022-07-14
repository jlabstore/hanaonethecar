package com.jlabsoft.hana.onethecar.onthecaradmin.banner;


import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/banner")
public class BannerController {
    


    @RequestMapping(value = "/regist", method = RequestMethod.GET)
    public ModelAndView insertBanner(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView("onethecar.banner/regist");

        // int idx = request.getParameter("idx") != null? Integer.parseInt(request.getParameter("idx").toString()) : 0;
        // if(idx != 0) {
        //     Map<String,Object> notice = noticeService.getNoticeByIdx(idx);
        //     modelAndView.addObject("notice", notice);
        //     modelAndView.addObject("topMenuName", "배너 수정");
        //     modelAndView.addObject("images", imageService.getImageManage(idx, ImageTargetTable.NOTICE, null));
        // }else{
            modelAndView.addObject("topMenuName", "배너 등록");
            // modelAndView.addObject("images", imageService.getImageManage(idx, ImageTargetTable.NOTICE, null));

        // }
        return modelAndView;

    }
}