<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/libs/bootstrap-table/bootstrap-table.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/libs/bootstrap/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/libs/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/bootstrap/bootstrap.min.js"></script>
</head>
<body>
	
	<table id="result" class="table table-hover" style="text-align: center;">
	    <thead style="text-align: center;">
	        <tr>
	            <th data-field="userid">编号</th>
	            <th data-field="username">姓名</th>
	            <th data-field="password">密码</th>
	            <th data-field="edit" data-formatter="toolbar">操作</th>
	        </tr>
	    </thead>
	</table>
    <form action="#" id="formid" onsubmit="return false"
        enctype="multipart/form-data">
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
            aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">学生信息修改</h4>
                    </div>
                    <div class="modal-body">
			                        编号：<input type="text" name="userid" class="form-control" value="" readonly="readonly" /><br> 
			                        姓名：<input type="text" name="username" class="form-control" id="username" value=""><br>
			                        密码：<input type="text" name="password" class="form-control" id="password" value=""><br>
                    </div>
                    <div class="modal-footer">
                        <button type="button" onclick="update()" class="btn btn-primary"
                            data-dismiss="modal">提交更改</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    
	<script type="text/javascript">
	    $(function() {
	        $("#result").bootstrapTable({
	            url : "/user/queryall",
	            method : "post",
	            cache : false,
	            dataType : "json",
	            contentType : "application/x-www-form-urlencoded",//post的方式提交的话需要写
	            toolbar : "#toolbar",
	            toolbarAlign : "left",
	            striped : true,
	            pagination : true,
	            sidePagination : "server",
	            pageNumber : 1,
	            pageSize : 5,
	            pageList : [ 5, 10, 15 ],
	            locale : "zh-CN",
	            queryParamsType : "limit",
	            queryParams : queryParams
	        });
	    });
	</script>
	
	
</body>
</html>