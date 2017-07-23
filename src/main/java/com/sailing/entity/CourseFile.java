package com.sailing.entity;

public class CourseFile {
    private Integer id;

    private Integer courseId;

    private Integer fileId;

    private Integer fileType;

    public CourseFile() {
    }

    public CourseFile(Integer fileId, Integer fileType) {
        this.fileId = fileId;
        this.fileType = fileType;
    }

    public CourseFile(Integer courseId, Integer fileId, Integer fileType) {
        this.courseId = courseId;
        this.fileId = fileId;
        this.fileType = fileType;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getFileId() {
        return fileId;
    }

    public void setFileId(Integer fileId) {
        this.fileId = fileId;
    }

    public Integer getFileType() {
        return fileType;
    }

    public void setFileType(Integer fileType) {
        this.fileType = fileType;
    }
}