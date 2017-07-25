package com.train.service;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;

/**
 * 邮件服务
 * Created by java_zong on 2017/4/22.
 */
@Service
public class MailService {
    private static final Logger logger = LoggerFactory.getLogger(MailService.class);
    private String mailFrom = "zhao.kan@de-light.co";
    @Autowired
    private Environment env;
    @Autowired
    private JavaMailSender javaMailSender;
    @Autowired
    private ThreadPoolTaskExecutor taskExecutor;

    @PostConstruct
    public void init() {
        String from = env.getProperty("email.from");
        if (StringUtils.isNotBlank(from)) {
            mailFrom = from;
        }
    }

    /**
     * 发送邮件
     *
     * @param recipent 收件人
     * @param subject  主题
     * @param content  内容
     */
    public void sendMail(final String recipent, final String subject, final String content) {
        taskExecutor.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    SimpleMailMessage message=new SimpleMailMessage();
                    message.setFrom(mailFrom);
                    message.setTo(recipent);
                    message.setSubject(subject);
                    message.setText(content);
                    javaMailSender.send(message);
                } catch (Exception e) {
                    logger.error(String.format("邮件发送失败:[recipient:(%s),subject:(%s),content:(%s)]"),
                            recipent, subject, content, e);
                }
            }
        });
    }
}
