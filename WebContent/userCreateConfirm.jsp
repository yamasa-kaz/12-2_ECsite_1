<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html"; charset="utf-8"/>
    <meta http-equiv="Content-Style-Type" content="text/css"/>
    <meta http-equiv="Content-Script-Type" content="text/javascript"/>
    <meta http-equiv="imagetoolbar" content="no"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    
<title>UserCreateConfirm画面</title>

<style type="text/css">
/* Tag Layout */
    body{
        margin:0;
        padding:0;
        line-height:1.6;
        letter-spacing:1px;
        font-family:Verdana,Helvetica,sans-serif;
        font-size:12px;
        color:#333;
        background:#fff
    }
    
    table{
        text-align:center;
        margin:0 auto;
    }
/* ecsite Layout */
    #top{
        width:780px;
        margin:30px auto;
        border:1px solid #333;
    }
    
    #header{
        width:100%;
        height:80px;
        background-color:black;
    }
    
    #main{
        width:100%;
        height:500px;
        text-align:center;
    }
    
    #footer{
        width:100%;
        height:80px;
        background-color:black;
        clear:both;
    }
    
    #text-center{
        display:inline-block;
        text-align:center;
    }
</style>
</head>
<body>
    <div id="header">
        <div id="pr"></div>
    </div>

    <div id ="main">
        <div id="top">
            <p>UserCreateConfirm</p>
        </div>
        <div>
            <h3>登録する内容は以下でよろしいですか。</h3>
            
                <s:form action="UserCreateCompleteAction">
                <table>
                    <tr id="box">
                        <td>
                            <label>ログインID：</label>
                        </td>
                        <td>
                            <s:property value="loginUserId" escapeHtml="false"/>
                        </td>
                    </tr>
                    <tr id="box">
                        <td>
                            <label>ログインPASS：</label>
                        </td>
                        <td>
                            <s:property value="loginPassword" escapeHtml="false"/>
                        </td>
                    </tr>
                    <tr id="box">
                        <td>
                            <label>ユーザー名：</label>
                        </td>
                        <td>
                            <s:property value="userName" escapeHtml="false"/>
                        </td>
                    </tr>
                </table>
                    
                            <s:submit value="完了"/>
                        
                </s:form>
            
        </div>
    </div>

    <div id="footer">
        <div id="pr"></div>
    </div>
</body>
</html>