package com.train.conf;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import java.util.Properties;

/**
 * Created by java_zong on 2017/4/22.
 */
@Configurable
@EnableTransactionManagement
@PropertySources(value = {@PropertySource("classpath:db.properties")})
public class BackConfig {
    @Value(value = "${email.encoding}")
    private String emailEncoding;
    @Value(value = "${email.host}")
    private String emailHost;
    @Value(value = "${email.port}")
    private Integer emailPort;
    @Value(value = "${email.username}")
    private String emailUsername;
    @Value(value = "${email.password}")
    private String emailPassword;
    @Value(value = "${email.smtp.auth.key}")
    private String emailSmtpAuthKey;
    @Value(value = "${email.smtp.auth.value}")
    private String emailSmtpAuthValue;
    @Value(value = "${email.smtp.timeout.key}")
    private String emailSmtpTimeoutKey;
    @Value(value = "${email.smtp.timeout.value}")
    private String emailSmtpTimeoutValue;

    @Value(value = "${thead.pool.minSize}")
    private Integer theadPoolMinSize;
    @Value(value = "${thead.pool.maxSize}")
    private Integer theadPoolMaxSize;
    @Value(value = "${thead.pool.queueSize}")
    private Integer theadPoolQueueSize;

    @Bean
    public static PropertySourcesPlaceholderConfigurer propertyConfiInDev() {
        return new PropertySourcesPlaceholderConfigurer();
    }

    @Bean(name = "javaMailSender")
    public JavaMailSender javaMailSender() {
        JavaMailSenderImpl javaMailSender = new JavaMailSenderImpl();
        javaMailSender.setDefaultEncoding(emailEncoding);
        javaMailSender.setHost(emailHost);
        javaMailSender.setPort(emailPort);
        javaMailSender.setUsername(emailUsername);
        javaMailSender.setPassword(emailPassword);
        Properties pp = new Properties();
        pp.setProperty(emailSmtpAuthKey, emailSmtpAuthValue);
        pp.setProperty(emailSmtpTimeoutKey, emailSmtpTimeoutValue);
        return javaMailSender;
    }


    @Bean(name = "taskExecutor")
    public ThreadPoolTaskExecutor taskExecutor() {
        ThreadPoolTaskExecutor taskExecutor = new ThreadPoolTaskExecutor();
        taskExecutor.setCorePoolSize(theadPoolMinSize);
        taskExecutor.setMaxPoolSize(theadPoolMaxSize);
        taskExecutor.setQueueCapacity(theadPoolQueueSize);
        taskExecutor.initialize();
        return taskExecutor;
    }

}
