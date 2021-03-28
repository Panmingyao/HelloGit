<%@ page contentType="text/html;charset=UTF-8" %>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
    <head>
        <base href="<%=basePath%>">
        <title>hello</title>
        <script src="js/jquery.js"></script>
        <script>
            $(function (){
                $("#djBtn").click(function (){
                    $.ajax({
                        url:"a.do",//访问后台servlet
                        type:"get",//请求方式
                        dataType:"json",//从后台接收数据方式
                        async:true,//异步 false同步
                        success:function (data){//data,从后台相应的数据,从后台接收到数据后函数
                            $("#msg").html(data);
                            alert(data)
                        }
                    })
                })
            })
        </script>
    </head>
    <body>
        <h2>Hello World!</h2>
        <button id="djBtn">点击</button>
        <div id="msg"></div>
    </body>
</html>
