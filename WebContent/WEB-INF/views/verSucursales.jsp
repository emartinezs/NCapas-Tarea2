<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sucursales</title>
</head>
<body>
	<h1>Sucursales</h1>
	<form action="${pageContext.request.contextPath}/agregarSucursal">
		<input type="submit" value="Agregar Sucursal">
	</form>
	
	<table>
		<tr>
			<th>Codigo</th>
			<th>Nombre</th>
			<th>Ubicacion</th>
			<th>Horarios</th>
			<th>Mesas</th>
			<th>Gerente</th>
		</tr>
		<c:forEach items="${sucursales}" var="sucursal">
			<tr>
				<td>${sucursal.id}</td>
				<td>${sucursal.nombre}</td>
				<td>${sucursal.ubicacion}</td>
				<td>${sucursal.horarios}</td>
				<td>${sucursal.nMesas}</td>
				<td>${sucursal.nomGerente}</td>
				<td>
					<form action="${pageContext.request.contextPath}/perfilSucursal">
						<input type="submit" value="Ver">
					</form>
					<form action="${pageContext.request.contextPath}/editarSucursal">
						<input type="submit" value="Editar">
					</form>
					<form action="${pageContext.request.contextPath}/eliminarSucursal">
						<input type="submit" value="Eliminar">
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>