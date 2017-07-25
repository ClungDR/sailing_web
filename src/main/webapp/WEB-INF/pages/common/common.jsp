<%@ page language="java" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${resPath}/bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${resPath}/font/css/font-awesome.min.css">
<script type="text/javascript">
    var basePath="${basePath}";
    var resPath="${resPath}";
    var user={id:"${user.id}",
        organizationId:"${user.organizationId}",
        username:"${user.username}",
        headPic:"${user.headPic}"
    };

    /**
     *
     * id;

     private Integer organizationId;

     private String username;
     @JsonIgnore
     private String password;

     private List<Integer> roleIds;
     @JsonIgnore
     private Boolean locked;

     private String headPic;
     *
     */


</script>
<script type="text/javascript" src="${resPath}/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="${resPath}/bootstrap/js/bootstrap.min.js"></script>

