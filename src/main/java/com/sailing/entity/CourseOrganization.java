package com.sailing.entity;

public class CourseOrganization {
    private Integer id;

    private Integer courseId;

    private Integer organizationId;

    public CourseOrganization() {
    }

    public CourseOrganization(Integer courseId, Integer organizationId) {
        this.courseId = courseId;
        this.organizationId = organizationId;
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

    public Integer getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(Integer organizationId) {
        this.organizationId = organizationId;
    }

    @Override
    public String toString() {
        return "CourseOrganization{" +
                "id=" + id +
                ", courseId=" + courseId +
                ", organizationId=" + organizationId +
                '}';
    }
}