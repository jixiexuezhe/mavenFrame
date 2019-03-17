package com.zjj.controller;

import java.awt.Container;
import java.awt.FlowLayout;
import java.io.IOException;

import javax.swing.ImageIcon;
import javax.swing.JApplet;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.text.Element;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class HelloWorld extends JApplet {
	private static final long serialVersionUID = 1L;

	public void init() {
		Container contentPane = getContentPane();
		java.net.URL codebase = getClass().getResource("loli.jpg");
		JLabel label = new JLabel(new ImageIcon(codebase));
		contentPane.setLayout(new FlowLayout());
		contentPane.add(label);
	}
	
	public static void main(String[] args) throws Exception {
//		JFrame f=new JFrame();
//		JApplet applet=new JApplet();
//		applet.init();
//		f.setContentPane(applet.getContentPane());
//		f.setBounds(100, 100, 400, 600);
//		f.setVisible(true);
		
		Document doc = Jsoup.connect("http://www.btc38.com/httpAPI.php?n=0.33343298936041815")
		 .data("query","Java").userAgent("Mozilla").cookie("auth","token").timeout(3000).post();
		Elements elements=doc.getAllElements();
		Elements e =doc.getElementsByClass("markets");
		System.out.println(e);
		
	}
}
