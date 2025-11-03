<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Posiciones — Liga BetPlay 2025</title>
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
			alt="Posiciones" />
		<div class="banner__overlay"></div>
		<div class="banner__content">
			<h2 class="banner__title">Tabla de posiciones</h2>
			<p class="banner__subtitle">Clasificación general</p>
		</div>
	</section>

	<section class="section">
		<div class="container">
			<div class="table-wrap">
				<table id="tablaPosiciones" class="display" style="width: 100%">
					<thead>
						<tr>
							<th>#</th>
							<th>Equipo</th>
							<th>PJ</th>
							<th>PG</th>
							<th>PE</th>
							<th>PP</th>
							<th>GF</th>
							<th>GC</th>
							<th>DF</th>
							<th>PTS</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty clasificacion}">
							<c:set var="i" value="0" />
							<c:forEach var="cRow" items="${clasificacion}">
								<c:set var="i" value="${i + 1}" />
								<tr>
									<td>${i}</td>
									<td>${cRow.idEquipo}</td>
									<td>${cRow.jugados}</td>
									<td>${cRow.ganados}</td>
									<td>${cRow.empatados}</td>
									<td>${cRow.perdidos}</td>
									<td>${cRow.golFavor}</td>
									<td>${cRow.golContra}</td>
									<td>${cRow.diferenciaGol}</td>
									<td>${cRow.puntos}</td>
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
			$('#tablaPosiciones')
					.DataTable(
							{
								language : {
									url : '//cdn.datatables.net/plug-ins/1.13.7/i18n/es-ES.json'
								},
								order : [ [ 9, 'desc' ] ],
								pageLength : 20
							});
		});
	</script>

</body>
</html>
