package com.sailing.web.controller.admin;

import static com.sailing.constant.FileConstants.EXCEL_FILE;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.sailing.util.ListUtil;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sailing.constant.FileConstants;
import com.sailing.constant.UserConstants;
import com.sailing.entity.*;
import com.sailing.service.course.CourseFileService;
import com.sailing.service.course.CourseService;
import com.sailing.service.file.AudioService;
import com.sailing.service.file.ExcelService;
import com.sailing.service.file.PPTService;
import com.sailing.service.file.VideoService;
import com.sailing.web.controller.BaseController;

/**
 * Created by 25824 on 2017/7/21.
 */
@Controller
@RequestMapping("/admin/file")
public class AdminFileController extends BaseController{
    public static final int DEFAULT_COURSE_ID=2;

    @Autowired
    VideoService videoService;
    @Autowired
    AudioService audioService;
    @Autowired
    PPTService pptService;
    @Autowired
    ExcelService excelService;
    @Autowired
    CourseFileService courseFileService;
    @Autowired
    CourseService courseService;

    @RequestMapping("/fileUpload")
    @ResponseBody
    public Object fileUpload(@RequestParam("doc") MultipartFile file,String courseIds) {
        System.out.println("dasdasda"+courseIds);

        if (file.isEmpty()) {
            return "error";
        }
        String rootFilePath = request.getServletContext()
                .getRealPath("/resources/data");

        String oldname = file.getOriginalFilename();
        long size= file.getSize();

        int position = oldname.lastIndexOf(".");
        String extension = "";
        if (position != -1) {
            extension = oldname.substring(position);
            oldname=oldname.substring(0,position);
        }

        String filename = new Md5Hash(
                String.valueOf(System.currentTimeMillis()),
                session.getAttribute(UserConstants.CURRENT_USER_ID)).toString();
        String filePath="";
        Short fileType=0;
//		判断文件类型，保存在分开的文件夹下
        if(extension.equalsIgnoreCase(".xls")||extension.equalsIgnoreCase(".xlsx")){
            filePath=rootFilePath+"/excel";
            fileType=EXCEL_FILE;
        }else if(extension.equalsIgnoreCase(".mp4")||extension.equalsIgnoreCase(".flv")){
            filePath=rootFilePath+"/video";
            fileType= FileConstants.VIDEO_FILE;
        }else if(extension.equalsIgnoreCase(".mp3")){
            filePath=rootFilePath+"/audio";
            fileType=FileConstants.AUDIO_FILE;
        }else if(extension.equalsIgnoreCase(".ppt")||extension.equalsIgnoreCase(".pptx")){
            filePath=rootFilePath+"/ppt";
            fileType=FileConstants.PPT_FILE;
        }else filePath=rootFilePath+"/temp";
//        打开文件夹
        File parent = new File(filePath);
        if (!parent.exists())
            parent.mkdirs();
        try {
            file.transferTo(new File(parent, filename + extension));
        } catch (IOException e) {
            e.printStackTrace();
            return "传输文件失败！";
        }
//        保存文件到数据库表，并且建立文件与课程的对应关系
        List<Integer> cIds=ListUtil.getListFromJSON(courseIds);

        if(cIds==null){
            cIds= new ArrayList<>();
        }
        if(cIds.size()==0){
            cIds.add(DEFAULT_COURSE_ID);
        }

        switch (fileType){
            case FileConstants.PPT_FILE:{
                PPT ppt = new PPT(oldname,(int)size/1024,filename+extension,(String) session.getAttribute(UserConstants.CURRENT_USER_ID));
                pptService.insertSelective(ppt);
                ppt=pptService.selectById(ppt.getId());
                CourseFile cf=new CourseFile(ppt.getId(),fileType.intValue());
                courseFileService.insertCourseFiles(cf, cIds);
                return ppt;
            }
            case FileConstants.VIDEO_FILE:{
                Video video = new Video(oldname,(int)size/1024,filename+extension,(String) session.getAttribute(UserConstants.CURRENT_USER_ID));
                videoService.insertSelective(video);
                video=videoService.selectById(video.getId());
                CourseFile cf=new CourseFile(video.getId(),fileType.intValue());
                courseFileService.insertCourseFiles(cf,cIds);
                return video;
            }
            case FileConstants.AUDIO_FILE:{
                Audio audio= new Audio(oldname,(int)size/1024,filename+extension,(String) session.getAttribute(UserConstants.CURRENT_USER_ID));
                audioService.insertSelective(audio);
                audio=audioService.selectById(audio.getId());
                CourseFile cf=new CourseFile(audio.getId(),fileType.intValue());
                courseFileService.insertCourseFiles(cf,cIds);
                return audio;
            }
            case EXCEL_FILE:{
                Excel excel= new Excel(oldname,(int)size/1024,filename+extension,(String) session.getAttribute(UserConstants.CURRENT_USER_ID));
                excelService.insertSelective(excel);
                excel=excelService.selectById(excel.getId());
                CourseFile cf=new CourseFile(excel.getId(),fileType.intValue());
                courseFileService.insertCourseFiles(cf,cIds);
                return excel;
            }
            default:return "保存文件失败！";
        }

    }



}
