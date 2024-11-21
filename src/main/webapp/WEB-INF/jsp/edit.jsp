<%@include file="commons/header.jsp"%>
<%@include file="commons/navigator.jsp"%>
<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Editar Empleado</h3>
    </div>
    <div>
        <form action="${urlEdit}" modelAttribute="employeeForm" method="post">
            <input type="hidden" name="idEmpleado" value="${employee.idEmpleado}">
            <div class="mb-3">
                <label for="name" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="name" name="name" required="true" value="${employee.name}">
            </div>
            <div class="mb-3">
                <label for="department" class="form-label">Departamento</label>
                <input type="text" class="form-control" id="department" name="department" value="${employee.department}">
            </div>
            <div class="mb-3">
                <label for="salary" class="form-label">Sueldo</label>
                <input type="number" step="any" class="form-control" id="salary" name="salary" value="${employee.salary}">
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-warning btn-sm me-3">Agregar</button>
                <a href="${urlInit}" class="btn btn-danger btn-sm">Regresar</a>
            </div>
        </form>
    </div>
</div>
<%@include file="commons/footPage.jsp"%>