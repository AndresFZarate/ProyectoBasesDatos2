<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Jugadores — Liga BetPlay 2025</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles/main.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script
	src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
</head>
<body>

	<jsp:include page="/fragments/header.jspf" />

	<section class="banner">
		<img class="banner__img"
			src="${pageContext.request.contextPath}/img/portada.png"
			alt="Jugadores" />
		<div class="banner__overlay"></div>
		<div class="banner__content">
			<h2 class="banner__title">Jugadores</h2>
			<p class="banner__subtitle">Plantillas, posiciones y valores de
				mercado</p>
		</div>
	</section>

	<section class="section">
		<div class="container">
			<h2 class="section__title">Listado de jugadores</h2>

			<div class="table-wrap">
				<table id="tablaJugadores" class="display" style="width: 100%">
					<thead>
						<tr>
							<th>ID</th>
							<th>Nombre</th>
							<th>Equipo</th>
							<th>Posición</th>
							<th>Nacionalidad</th>
							<th>F. Nacimiento</th>
							<th>Valor</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty jugadores}">
							<c:forEach var="j" items="${jugadores}">
								<tr>
									<td>${j.idJugador}</td>
									<td>${j.primerNombre}<c:out value='${j.segundoNombre}' />
										${j.primerApellido}
									</td>
									<td>${j.equipo}</td>
									<td>${j.posicion}</td>
									<td>${j.nacionalidad}</td>
									<td><c:choose>
											<c:when test="${j.fechaNacimiento != null}">
												<fmt:formatDate value="${j.fechaNacimiento}"
													pattern="yyyy-MM-dd" />
											</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
									<td>${j.valor}</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
	</section>

	<jsp:include page="/fragments/footer.jspf" />

	<script>
		$(function() {
			$('#tablaJugadores')
					.DataTable(
							{
								language : {
									url : '//cdn.datatables.net/plug-ins/1.13.7/i18n/es-ES.json'
								},
								pageLength : 10
							});
		});
	</script>

</body>
</html>
