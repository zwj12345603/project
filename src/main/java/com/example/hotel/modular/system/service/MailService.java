package com.example.hotel.modular.system.service;

/**
 * @Description: MailService邮件发送
 */
public interface MailService {

    /**
     * @param to
     * @param subject
     * @param content
     * @return : void
      * @description: 发送简单邮件
     */
     void sendSimpleMail(String to, String subject, String content);
}
