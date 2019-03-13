package main;

import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.*;
import java.net.*;

import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.*;
import javax.servlet.http.*;


public class CaptchaServlet extends HttpServlet {


  protected void processRequest(HttpServletRequest request, 
                                HttpServletResponse response) 
                 throws ServletException, IOException {

    int width = 150;
    int height = 50;

    char data[][] = {
        { 'z', 'e', 't', 'c', 'o', 'd', 'e' },
        { 'l', 'i', 'n', 'u', 'x' },
        { 'f', 'r', 'e', 'e', 'b', 's', 'd' },
        { 'u', 'b', 'u', 'n', 't', 'u' },
        { 'j', 'e', 'e' },
        {'1','g','r','4'},
        {'a','a','f','0'},
        {'q','s','z','9'},
        {'w','d','x','1'},
        {'e','f','c','2'},
        {'r','g','v','3'},{'q','s','r','6'},{'u','i','q','t'},{'4','e','v','A'},{'E','2','Q','d'},{'Q','q','E','5'},{'T','N','f','p'},{'K','7','y','r'},
        {'t','h','b','4'},{'a','x','f','5'},{'h','j','g','v'},{'5','d','g','D'},{'D','6','D','c'},{'A','a','D','3'},{'G','U','v','l'},{'O','5','h','4'},
        {'y','j','n','5'},{'z','e','v','2'},{'n','m','s','y'},{'6','c','y','T'},{'F','0','R','u'},{'Z','z','R','8'},{'B','J','t','o'},{'L','2','n','d'},
        {'u','j','m','6'},{'w','d','t','8'},{'i','k','d','h'},{'7','r','b','A'},{'J','3','V','b'},{'W','z','C','1'},{'Y','M','g','i'},{'P','7','u','v'},
        {'i','k','2','7'},{'s','c','g','1'},{'j','t','t','j'},{'8','f','j','I'},{'W','8','U','g'},{'X','x','F','6'},{'H','I','b','k'},{'Y','3','j','m'},
        {'o','l','5','8'}
        
    };


    BufferedImage bufferedImage = new BufferedImage(width, height, 
                  BufferedImage.TYPE_INT_RGB);

    Graphics2D g2d = bufferedImage.createGraphics();

    Font font = new Font("Georgia", Font.BOLD, 18);
    g2d.setFont(font);

    RenderingHints rh = new RenderingHints(
           RenderingHints.KEY_ANTIALIASING,
           RenderingHints.VALUE_ANTIALIAS_ON);

    rh.put(RenderingHints.KEY_RENDERING, 
           RenderingHints.VALUE_RENDER_QUALITY);

    g2d.setRenderingHints(rh);

    GradientPaint gp = new GradientPaint(0, 0, 
    Color.white, 0, height/2, Color.white, true);

    g2d.setPaint(gp);
    g2d.fillRect(0, 0, width, height);

    g2d.setColor(new Color(255, 153, 0));

    Random r = new Random();
    int index = Math.abs(r.nextInt()) % 50;

    String captcha = String.copyValueOf(data[index]);
    request.getSession().setAttribute("captcha", captcha );

    int x = 0; 
    int y = 0;

    for (int i=0; i<data[index].length; i++) {
        x += 10 + (Math.abs(r.nextInt()) % 15);
        y = 20 + Math.abs(r.nextInt()) % 20;
        g2d.drawChars(data[index], i, 1, x, y);
    }

    g2d.dispose();

    response.setContentType("image/png");
    OutputStream os = response.getOutputStream();
    ImageIO.write(bufferedImage, "png", os);
    os.close();
  } 


  protected void doGet(HttpServletRequest request, 
                       HttpServletResponse response)
                           throws ServletException, IOException {
      processRequest(request, response);
  } 


  protected void doPost(HttpServletRequest request, 
                        HttpServletResponse response)
                            throws ServletException, IOException {
      processRequest(request, response);
  }
}