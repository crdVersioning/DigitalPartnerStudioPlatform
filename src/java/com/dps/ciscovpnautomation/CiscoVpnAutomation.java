package com.dps.ciscovpnautomation;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.time.LocalDateTime;

public class CiscoVpnAutomation 
{
    public static void main(String[] args) throws InterruptedException 
    {
        try
        {
            for(int i=10; i>0; i--)
            {
                System.out.print(i+" ");
                Thread.sleep(1000);
            }
            
            System.out.println("START : "+LocalDateTime.now());
            
            String path = "C:\\Program Files (x86)\\Cisco\\Cisco AnyConnect Secure Mobility Client";
            System.setProperty("user.dir",path);
            System.out.println(System.getProperty("user.dir"));
            String[] command1 = {path+"\\vpncli.exe","-s","connect","82.191.189.50"};
            String[] command2 = "cmd /C dir".split(" ");

            Process proc = Runtime.getRuntime().exec(command1);
            
            OutputStream outputStream = proc.getOutputStream();
            InputStream inputStream = proc.getInputStream();
                        
            PrintWriter pw = new PrintWriter(outputStream);
            BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));
            

            pw.println("y"); pw.flush();
            pw.println("servercloud"); pw.flush();
            pw.println("SAC3600-4001Cr"); pw.flush();
            pw.println("y"); pw.flush();
            
            br.lines().filter(line->!line.isBlank()).forEach(line->System.out.println(line));
            
            System.out.println("STOP : "+LocalDateTime.now());
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }    
    }
}
