<%--
  Created by IntelliJ IDEA.
  User: 1ncognitoER
  Date: 2017-10-19
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>Get All</title>
    <link rel="stylesheet" href="../css/base.css" />
    <script type="text/javascript" src="../js/jquery-3.2.0.js"></script>
</head>
<body>
    <div class="operate">
        <a class="operate-bu" href="/moduleOne/heroAction_getHeros.action" >GET HEROS</a>
        <a class="operate-bu" href="/moduleOne/heroAction_getAll.action" >GET ALL</a>
        <a class="operate-bu" href="/moduleOne/heroAction_toAddInfo.action">ADD ONE</a>
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <caption class="table-cap">League of Legends</caption>
        <tr class="tr-title">
            <th>NUMBER</th>
            <th>NAME</th>
            <th>ROLE</th>
            <th>CAMP</th>
        </tr>
        <s:iterator value="heroLists" var="va">
            <tr class="tr-data">
                <td><input type="text" value="<s:property value="#va.heroid"/>"></td>
                <td><input type="text" value="<s:property value="#va.name"/>"></td>
                <td><input type="text" value="<s:property value="#va.role"/>"></td>
                <td><input type="text" value="<s:property value="#va.camp.league"/>"></td>
            </tr>
        </s:iterator>
    </table>
</body>
<style type="text/css">
    .operate{ position: absolute; right: 10px; top: 10px;}
    .operate-bu,.operate-bu{
        text-decoration: none; display: inline-block; width: 100px;
        text-align: center; border: 2px solid gray; color: gray;
    }
    .table-cap{ color: gray; font-size: 20px; font-weight: bold; padding: 10px 0;}
    .tr-title{ background-color: gray; color: white;}
    .tr-title th{ padding: 10px 0;}
    .tr-data td{ text-align: center; border-bottom: 1px solid gray;}
    .tr-data td input{ text-align: center; border: none; padding: 10px 0; color: gray;}
</style>
</html>
