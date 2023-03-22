<%-- 
    Document   : timetable
    Created on : Mar 19, 2023, 11:25:19 PM
    Author     : My PC
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="../assets/css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container ">
            <div class="col-md-12">
                <h1><span>FPT University Academic Portal</span></h1>
                <h2>Activities for
                    <span>${requestScope.student.id} (${requestScope.student.name})</span>
                </h2>
                <p><b>Note:</b> These activities do not include extra-curriculum activities, such as club activities ...</p>
                <p><b> Chú thích:</b> Các hoạt động trong bảng dưới không bao gồm hoạt động ngoại khóa, ví dụ như hoạt động câu lạc bộ ...</p>
                <p> Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br/>
                    Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br/>
                    Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br/>
                    Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br/>
                    Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br/>
                    Little UK (LUK) thuộc tầng 5 tòa nhà Delta</p>
                <table>
                    <thead>
                        <tr>
                            <th rowspan="2">
                                <input type="hidden" name="stdid" value="${param.stdid}"/>
                                From: <input type="date" name="from" value="${requestScope.from}"/>
                                <br>
                                To  : <input type="date" name="to" value="${requestScope.to}"/>
                                <input class="btn-success" type="submit" value="View"/> 
                            </th>
                            <c:forEach items="${requestScope.dates}" var="d">
                                <th>${helper.getDayNameofWeek(d)}</th>
                                </c:forEach>
                        </tr>
                        <tr>
                            <c:forEach items="${requestScope.dates}" var="d">
                                <th>
                                    <fmt:formatDate value="${d}" pattern="dd/MM"/>
                                </th>
                            </c:forEach>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.slots}" var="slot">
                            <tr>
                                <td>Slot ${slot.id} <br/> <span class="label label-success">${slot.description}</span></td> 

                                <c:forEach items="${requestScope.dates}" var="d">
                                    <td>
                                        <c:forEach items="${requestScope.sessions}" var="ses">

                                            <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.timeslot.id eq slot.id)}">
                                                <a href="">${ses.group.name}-${ses.group.subject.name}</a>
                                                <br/>
                                                ${ses.room.name}
                                                <br/>

                                                <c:if test="${ses.attended}">
                                                    <c:if test="${ses.attendances.get(0).present}">
                                                        <a href=""><font color="green">(Present)</font></a>
                                                        </c:if>
                                                        <c:if test="${!ses.attendances.get(0).present}">
                                                        <a href=""><font color="red">(Absent)</font></a>
                                                        </c:if>
                                                    </c:if>
                                                    <c:if test="${!ses.attended}">
                                                    <a href=""><font color="black">(Not yet)</font></a>  
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                    </td>
                                </c:forEach>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <b>More note / Chú thích thêm</b>
                <ul>
                    <li>(<font color="green">attended</font>): ${requestScope.student.id} had attended this activity / ${requestScope.student.name} đã tham gia hoạt động này</li>
                    <li>(<font color="red">absent</font>): ${requestScope.student.id} had NOT attended this activity / ${requestScope.student.name} đã vắng mặt buổi này</li> 
                    <li>(-): no data was given / chưa có dữ liệu</li> 
                </ul>
            </div>
        </div>
    </body>
</html>
