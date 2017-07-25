package com.train.controller;

import com.train.domain.Result;
import com.train.service.MailService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.PostConstruct;

/**
 * Created by java_zong on 2017/4/22.
 */
@Controller
public class FeedbackController {

    //用户反馈邮件发送主题
    private static final String SUBJECT = "用户反馈";
    private String mailTo = "zhao.kan@de-light.co";
    @Autowired
    private MailService mailService;
    @Autowired
    private Environment env;

    @PostConstruct
    public void init() {
        String to = env.getProperty("email.to");
        if (StringUtils.isNotBlank(to)) {
            mailTo = to;
        }
    }

    @RequestMapping("/feedback")
    public String feedback() {
        return "feedback";
    }

    /**
     * 用户反馈
     *
     * @param email      用户邮箱地址
     * @param content 内容
     * @return
     */
    @RequestMapping("/sendFeedback")
    @ResponseBody
    public Result sendFeedback(@RequestParam(value = "email") String email,
                               @RequestParam(value = "content") String content) {
        StringBuffer con = new StringBuffer();
        con.append(email).append(":\n").append(content);
        mailService.sendMail(mailTo, SUBJECT, con.toString());
        return new Result(0);
    }
}
