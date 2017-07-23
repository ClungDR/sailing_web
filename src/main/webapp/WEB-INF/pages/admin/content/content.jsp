<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style type="text/css">
    .page-heading{
        padding: 65px 15px 0px 15px;
    }

    .breadcrumb{
        padding-left: 2px;
    }
    .breadcrumb li a{
        color: #999999;
    }
    .breadcrumb li.active{
        color: #65CEA7;
    }

</style>
<div class="page-heading">
    <h2>
        Editable Table
    </h2>
    <ul class="breadcrumb">
        <li>
            <a href="#">Dashboard</a>
        </li>
        <li>
            <a href="#">Data Table</a>
        </li>
        <li class="active"> Editable Table </li>
    </ul>
</div>

<style type="text/css">
    .wrapper {
        padding: 15px;
    }
    .wrapper .row{
        border-left: 10px;

    }
    .wrapper .user-operate .panel-body{
        padding-top: 0;
    }
    .wrapper .clearfix{
        padding-bottom: 10px;
    }

    .pagination{
        margin:0;
    }
    .pagination li a{
        color: #797979;
        padding: 5px 10px;
        display: inline-block;
    }
    .pagination .active a{
        background: #65cea7;
        border-color: #65cea7;
    }
</style>
<div class="wrapper">
    <div class="row user-operate">
        <div class="col-sm-12">
            <section class="panel">
                <header class="panel-heading">
                    <h3>Editable Table</h3>
                </header>
                <div class="panel-body" style="display: block;">
                    <div class="adv-table editable-table ">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button id="add-new-user" class="btn btn-primary">
                                    添加用户<i class="icon-plus"></i>
                                </button>
                                <button id="delete-user" class="btn btn-primary">
                                    Excel导入<i class=" icon-reply"></i>
                                </button>

                            </div>
                            <div class="btn-group pull-right">
                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">工具<span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu pull-right">
                                    <li><a href="#">Print</a></li>
                                    <li><a href="#">Export to Excel</a></li>
                                </ul>
                            </div>
                        </div>
                        <div id="editable-sample_wrapper" class="dataTables_wrapper form-inline" role="grid">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div id="editable-sample_length" class="dataTables_length">
                                        <label>
                                            <select size="1" name="editable-sample_length" aria-controls="editable-sample" class="form-control xsmall">
                                                <option value="5" selected="selected">5</option>
                                                <option value="15">15</option>
                                                <option value="20">20</option>
                                                <option value="-1">All</option>
                                            </select> records per page</label>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="dataTables_filter text-right" id="editable-sample_filter">
                                        <label>Search: <input type="text" aria-controls="editable-sample" class="form-control medium">
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <table class="table table-striped table-hover table-bordered dataTable" id="editable-sample" aria-describedby="editable-sample_info" style="width: 1066px;">
                                <thead>
                                <tr>

                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Point</th>
                                    <th>Status</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>

                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                <tr>
                                    <td class="">Theme</td>
                                    <td class="  sorting_1">Bucket</td>
                                    <td class=" ">342</td>
                                    <td class="center ">Good Org</td>
                                    <td class=" "><a class="edit" href="javascript:;">Edit</a></td>
                                    <td class=" "><a class="delete" href="javascript:;">Delete</a></td>
                                </tr><tr class="odd">
                                    <td class="">Akuman </td>
                                    <td class="  sorting_1"> Dareon</td>
                                    <td class=" ">987</td>
                                    <td class="center ">ipsume dolor</td>
                                    <td class=" "><a class="edit" href="javascript:;">Edit</a></td>
                                    <td class=" "><a class="delete" href="javascript:;">Delete</a></td>
                                </tr><tr class="even">
                                    <td class="">Margarita</td>
                                    <td class="  sorting_1">Diar</td>
                                    <td class=" ">456</td>
                                    <td class="center ">goolsd</td>
                                    <td class=" "><a class="edit" href="javascript:;">Edit</a></td>
                                    <td class=" "><a class="delete" href="javascript:;">Delete</a></td>
                                </tr><tr class="odd">
                                    <td class="">Margarita</td>
                                    <td class="  sorting_1">Diar</td>
                                    <td class=" ">456</td>
                                    <td class="center ">goolsd</td>
                                    <td class=" "><a class="edit" href="javascript:;">Edit</a></td>
                                    <td class=" "><a class="delete" href="javascript:;">Delete</a></td>
                                </tr><tr class="odd">
                                    <td class="">Margarita</td>
                                    <td class="  sorting_1">Diar</td>
                                    <td class=" ">456</td>
                                    <td class="center ">goolsd</td>
                                    <td class=" "><a class="edit" href="javascript:;">Edit</a></td>
                                    <td class=" "><a class="delete" href="javascript:;">Delete</a></td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="dataTables_info" id="editable-sample_info">
                                        Showing 1 to 5 of 29 entries
                                    </div>
                                </div>
                                <div class="col-lg-6 text-right">
                                    <div class="dataTables_paginate paging_bootstrap pagination"  aria-label="Page navigation">
                                        <ul class="pagination">
                                            <li class="prev disabled"><a href="#">← Prev</a></li>
                                            <li class="active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li class="next"><a href="#">Next → </a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>



