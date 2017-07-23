package com.sailing.util;

import java.awt.*;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.List;

import org.apache.poi.hslf.usermodel.HSLFSlide;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.sl.usermodel.*;
import org.apache.poi.xslf.usermodel.XMLSlideShow;
import org.apache.poi.xslf.usermodel.XSLFSlide;
import org.apache.xmlbeans.XmlException;

public class PPTUtil {
	public static void transformPPTToImages(String sourcePath, String targetFolder)
	        throws IOException, XmlException, OpenXML4JException {
		FileInputStream is = new FileInputStream(sourcePath);
		XMLSlideShow ppt = new XMLSlideShow(is);
		Dimension pgsize = ppt.getPageSize();
		List<XSLFSlide> slides = ppt.getSlides();
		int i = 1;
		for (XSLFSlide slide : slides) {
			BufferedImage img = new BufferedImage(pgsize.width, pgsize.height,
			        1);

			Graphics2D graphics = img.createGraphics();
			graphics.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
			        RenderingHints.VALUE_ANTIALIAS_ON);
			graphics.setRenderingHint(RenderingHints.KEY_RENDERING,
			        RenderingHints.VALUE_RENDER_QUALITY);
			graphics.setRenderingHint(RenderingHints.KEY_INTERPOLATION,
			        RenderingHints.VALUE_INTERPOLATION_BICUBIC);
			graphics.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS,
			        RenderingHints.VALUE_FRACTIONALMETRICS_ON);

			graphics.setColor(Color.white);
			graphics.clearRect(0, 0, pgsize.width, pgsize.height);
			graphics.fill(
			        new Rectangle2D.Float(0, 0, pgsize.width, pgsize.height));

			// render
			slide.draw(graphics);

			// save the output
			FileOutputStream out = new FileOutputStream(
			        targetFolder+"/" + i++ + ".png");
			javax.imageio.ImageIO.write(img, "png", out);
			out.close();
		}
		is.close();
	}
    public static void transformPPTXToImages(String sourcePath, String targetFolder)
            throws IOException, XmlException, OpenXML4JException {
        FileInputStream is = new FileInputStream(sourcePath);
        HSLFSlideShow ppt=new HSLFSlideShow(is);
        Dimension pgsize=ppt.getPageSize();
        List<HSLFSlide> slides=ppt.getSlides();
        int i = 1;
        for (HSLFSlide slide : slides) {
            BufferedImage img = new BufferedImage(pgsize.width, pgsize.height,
                    1);

            Graphics2D graphics = img.createGraphics();
            graphics.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
                    RenderingHints.VALUE_ANTIALIAS_ON);
            graphics.setRenderingHint(RenderingHints.KEY_RENDERING,
                    RenderingHints.VALUE_RENDER_QUALITY);
            graphics.setRenderingHint(RenderingHints.KEY_INTERPOLATION,
                    RenderingHints.VALUE_INTERPOLATION_BICUBIC);
            graphics.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS,
                    RenderingHints.VALUE_FRACTIONALMETRICS_ON);

            graphics.setColor(Color.white);
            graphics.clearRect(0, 0, pgsize.width, pgsize.height);
            graphics.fill(
                    new Rectangle2D.Float(0, 0, pgsize.width, pgsize.height));

            // render
            slide.draw(graphics);

            // save the output
            FileOutputStream out = new FileOutputStream(
                    targetFolder+"/" + i++ + ".png");
            javax.imageio.ImageIO.write(img, "png", out);
            out.close();
        }
        is.close();
    }


    public static void main(String[] args) {
        try {
            transformPPTToImages("F:/ppttest/chap2-计算机指令集结构.ppt","F:/ppttest/1");
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlException e) {
            e.printStackTrace();
        } catch (OpenXML4JException e) {
            e.printStackTrace();
        }
    }


}
