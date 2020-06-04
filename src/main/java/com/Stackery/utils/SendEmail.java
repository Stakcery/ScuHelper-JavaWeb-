package com.Stackery.utils;

import java.security.GeneralSecurityException;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.Stackery.MyConstant;
import com.sun.mail.util.MailSSLSocketFactory;

/**
 * 发送邮箱信息提示类
 * 设置SSL加密发送QQ邮箱
 */
public class SendEmail
{
    private String to;
    private String SendMessage;
    private String Subject;

    public SendEmail(String to,String Subject,String SendMessage){
        setTo(to);
        setSubject(Subject);
        setSendMessage(SendMessage);
    }

    /**
     * 发送邮件的方法
     * @throws GeneralSecurityException
     */
    public void Send() throws GeneralSecurityException{
        // 收件人电子邮箱
        String to = getTo();

        // 发件人电子邮箱
        String from = MyConstant.SEND_USER;

        // 指定发送邮件的主机为 smtp.qq.com
        String host = "smtp.qq.com";  //QQ 邮件服务器

        // 获取系统属性
        Properties properties = System.getProperties();

        // 设置邮件服务器
        properties.setProperty("mail.smtp.host", host);

        properties.put("mail.smtp.auth", "true");
        MailSSLSocketFactory mailSSLSocketFactory = new MailSSLSocketFactory();
        mailSSLSocketFactory.setTrustAllHosts(true);
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.ssl.socketFactory", mailSSLSocketFactory);

        // 获取默认session对象
        Session session = Session.getDefaultInstance(properties,new Authenticator(){
            public PasswordAuthentication getPasswordAuthentication()
            {
                return new PasswordAuthentication(MyConstant.SEND_USER, MyConstant.AUTH_CODE); //发件人邮件用户名、密码
            }
        });

        try{
            // 创建默认的 MimeMessage 对象
            MimeMessage message = new MimeMessage(session);

            // Set From: 头部头字段
            message.setFrom(new InternetAddress(from));

            // Set To: 头部头字段
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

            // Set Subject: 头部头字段
            message.setSubject(this.Subject);

            // 设置消息体
            message.setText(this.SendMessage);

            // 发送消息
            Transport.send(message);
        }catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }

    // 一系列setter和getter方法
    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getSendMessage() {
        return SendMessage;
    }

    public void setSendMessage(String sendMessage) {
        SendMessage = sendMessage;
    }

    public String getSubject() {
        return Subject;
    }

    public void setSubject(String subject) {
        Subject = subject;
    }

    //test
    public static void main(String[] args) {
        SendEmail a = new SendEmail("1078433422@qq.com","发送测试","发送成功");
        try {
            a.Send();
        } catch (GeneralSecurityException e) {
            e.printStackTrace();
        }
    }
}