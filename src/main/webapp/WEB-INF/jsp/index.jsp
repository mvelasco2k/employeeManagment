<%@include file="commons/header.jsp"%>
<%@include file="commons/navigator.jsp"%>
<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Employees System</h3>
    </div>
</div>
<div class="container">
    <table class="table table-striped table-hover table-bordered align-middle">
        <thead class="table-dark text-center">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Department</th>
            <th scope="col">Salary</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="employees" items="${employees}">
            <tr>
                <th scope="row">${employees.idEmpleado}</th>
                <td>${employees.name}</td>
                <td>${employees.department}</td>
                <td>
                    <fmt:setLocale value="en_US"/>
                    <fmt:formatNumber type="currency" currencySymbol="$" pattern="$#,##0.00" value="${employees.salary}"/>
                </td>
                <td class="text-center">
                    <c:set var="urlEdit">
                        <c:url value="${application.contextPath}/edit">
                            <c:param name="idEmpleado" value="${employees.idEmpleado}"/>
                        </c:url>
                    </c:set>
                    <a href="${urlEdit}" class="btn btn-warning btn-sm me-3">Editar</a>
                    <c:set var="urlDelete">
                        <c:url value="${application.contextPath}/delete">
                            <c:param name="idEmpleado" value="${employees.idEmpleado}"/>
                        </c:url>
                    </c:set>
                    <a href="${urlDelete}" class="btn btn-danger btn-sm me-3">Eliminar</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
<%@include file="commons/footPage.jsp"%>
