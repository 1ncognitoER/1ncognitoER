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
    <title>index</title>
    <link rel="stylesheet" href="../css/base.css" />
    <script type="text/javascript" src="../js/jquery-3.2.0.js"></script>
</head>
<body>
    <div class="operate">
        <a class="operate-bu" href="/moduleOne/campAction!getAllCamp.jspx" >GET INFO</a>
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <caption class="table-cap">League of Legends</caption>
        <tr class="tr-title">
            <th>LEAGUE ID</th>
            <th>LEAGUE</th>
            <th>HERO</th>
        </tr>
        <s:iterator value="campList" var="va" status="s">
            <tr class="tr-data">
                <td><input type="text" value="<s:property value="#va.campid"/>"></td>
                <td><input type="text" value="<s:property value="#va.league"/>"></td>
                <td>
                    <s:iterator value="#va.heroes" var="it">
                    <input type="text" value="<s:property value="#it.heroid"/>">
                    <input type="text" value="<s:property value="#it.name"/>">
                    <input type="text" value="<s:property value="#it.role"/>"><br>
                    </s:iterator>
                </td>
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
