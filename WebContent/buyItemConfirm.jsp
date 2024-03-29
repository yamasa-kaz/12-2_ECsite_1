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
    
<title>BuyItemConfirm画面</title>

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

    <div id="main">
        <div id="top">
            <p>BuyItemConfirm</p>
        </div>
        <div>
            <s:form action="BuyItemConfirmAction">
            <table>
                <tr>
                    <td>商品名</td>
                    <td>
                        <s:property value="session.buyItem_name"/>
                    </td>
                </tr>
                <tr>
                    <td>値段</td>
                    <td>
                        <s:property value="session.total_price"/>
                        <span>円</span>
                    </td>
                </tr>
                <tr>
                    <td>購入個数</td>
                    <td>
                        <s:property value="session.count"/>
                        <span>個</span>
                    </td>
                </tr>
                <tr>
                    <td>支払い方法</td>
                    <td>
                        <s:property value="session.pay"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <s:url var="back" action="HomeAction"/>
                        <input type="button" value="戻る" onclick="return submitForm('${back}')"/>
                    </td>
                    <td>
                        <s:url var="BuyItemConfirm" action="BuyItemConfirmAction"/>
                        <input type="button" value="完了" onclick="return submitForm('${BuyItemConfirm}')"/>
                    </td>
                </tr>
                
            </table>
            </s:form>
        </div>
        <div id="text-center">
            <p>前画面に戻る場合は
                <a href='<s:url action="GoHomeAction"/>'>こちら</a>
            </p>
            <p>マイページは
                <a href='<s:url action="MyPageAction"/>'>こちら</a>
            </p>
        </div>
    </div>

    <div id="footer">
        <div id="pr"></div>
    </div>
    
    <script type="text/javascript">
    function submitForm(action){
            document.forms[0].action=action;
            document.forms[0].submit();
            return false;
        }
    </script>
    
</body>
</html>