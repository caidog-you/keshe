<%--
  Created by IntelliJ IDEA.
  User: 11486
  Date: 2020/9/11
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

  <head>
    <title>用户登录</title>
    <script type="text/javascript" >

        function validateForm(){
            var uname = document.forms["login"]["uname"].value;
            var upwd = document.forms["login"]["upwd"].value;
            var ch =document.getElementById("yonghu");
            var chvalue=ch.options[ch.selectedIndex].value;
            if (uname==null || uname=="")
            {
                alert("用户名必须填写！"+chvalue);
                return false;
            }else if (upwd==null || upwd=="")
            {
                alert("密码不能为空！");
                return false;
            }


        }

    </script>
    <style>
      * {
        margin: 0;
        padding: 0;
      }

      html {
        height: 100%;
      }

      body {
        height: 100%;
        font-family: JetBrains Mono Medium;
        display: flex;
        align-items: center;
        justify-content: center;
        /* background-color: #0e92b3; */
        background: url(login.png) no-repeat;
        background-size: 100% 100%;
      }

      .form-wrapper {
        width: 300px;
        background-color: rgba(41, 45, 62, .8);
        color: #fff;
        border-radius: 2px;
        padding: 50px;
      }

      .form-wrapper .header {
        text-align: center;
        font-size: 35px;
        text-transform: uppercase;
        line-height: 100px;
      }

      .form-wrapper .input-wrapper input {
        background-color: rgb(41, 45, 62);
        border: 0;
        width: 100%;
        text-align: center;
        font-size: 15px;
        color: #fff;
        outline: none;
      }

      .form-wrapper .input-wrapper input::placeholder {
        text-transform: uppercase;
      }

      .form-wrapper .input-wrapper .border-wrapper {
        background-image: linear-gradient(to right, #e8198b, #0eb4dd);
        width: 100%;
        height: 50px;
        margin-bottom: 20px;
        border-radius: 30px;
        display: flex;
        align-items: center;
        justify-content: center;
      }

      .form-wrapper .input-wrapper .border-wrapper .border-item {
        height: calc(100% - 4px);
        width: calc(100% - 4px);
        border-radius: 30px;
      }

      .form-wrapper .action {
        display: flex;
        justify-content: center;
      }

      .form-wrapper .action .btn {
        width: 60%;
        text-transform: uppercase;
        border: 2px solid #0e92b3;
        text-align: center;
        line-height: 50px;
        border-radius: 30px;
        cursor: pointer;
      }

      .form-wrapper .action .btn:hover {
        background-image: linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%);
      }


    </style>



  <body>
<form name="login"  action="${pageContext.request.contextPath}/ins.jsp" onsubmit="return validateForm()" method = "get">
  <div class="form-wrapper">
    <div class="header">
      用户登录
    </div>
    <div class="input-wrapper" >

      <div class="border-wrapper">
        <input type="text" name="uname" placeholder="用户名" class="border-item" autocomplete="off">
      </div>
      <div class="border-wrapper">
        <input type="password" name="upwd" placeholder="密码" class="border-item" autocomplete="off">
      </div>
      <div class="border-wrapper">
        <select name = "yonghu"  id="yonghu">
          <option value="0">您的身份</option>
          <option value="1">买家</option>
          <option value="2">卖家</option>
        </select>
      </div>
    </div>
    <div class="action">
      <input type="submit" value="登录" class="btn">

    </div>
  </div>
</form>
  </body>

</html>
