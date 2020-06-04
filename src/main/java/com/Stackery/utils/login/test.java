package com.Stackery.utils.login;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;


public class test {
    public static void main(String [] args)
    {
        SuperStarLearningLogin e = null;
        try
        {
            FileInputStream fileIn = new FileInputStream(System.getProperty("user.dir") + "/src/main/java/Assistant/serializationInfo/SuperStarLearningLogin.info");
            ObjectInputStream in = new ObjectInputStream(fileIn);
            e = (SuperStarLearningLogin) in.readObject();
            in.close();
            fileIn.close();
        }catch(IOException i)
        {
            i.printStackTrace();
            return;
        }catch(ClassNotFoundException c)
        {
            System.out.println("MicroServiceLogin class not found");
            c.printStackTrace();
            return;
        }
        System.out.println("Deserialized MicroServiceLogin...");
        System.out.println(e.getSession());
    }
}
