package com.java.Model;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class Mails {
      public static void send(String host,String port,final String user,final String pass,final String Email) throws AddressException, MessagingException {                 
           //Get the session object...//sets SMTP server properties
        Properties props = new Properties();   
        props.put("mail.smtp.auth", "true");  
        props.put("mail.smtp.starttls.enable","true");
        props.put("mail.smtp.host",host);
        props.put("mail.smtp.port",port);
                
         // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            @Override
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        };
        
        Session session = Session.getInstance(props, auth);    
     //Compose the Message
     Message msg = new MimeMessage(session);
     msg.setFrom(new InternetAddress(user));
        InternetAddress[] Emails = { new InternetAddress(Email) };
        msg.setRecipients(Message.RecipientType.TO, Emails);
        msg.setSubject("MY DARAZ STORE");
        msg.setSentDate(new Date());
        msg.setText("Thank YOU FROM Shopping in our Site");
        // sends the e-mail
        Transport.send(msg);
 
    }    
}
