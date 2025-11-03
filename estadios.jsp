<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Estadios — Liga BetPlay 2025</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>

	<jsp:include page="/fragments/header.jspf" />

	<section class="banner">
		<img class="banner__img"
			src="${pageContext.request.contextPath}/img/portada.png"
			alt="Estadios" />
		<div class="banner__overlay"></div>
		<div class="banner__content">
			<h2 class="banner__title">Estadios oficiales</h2>
			<p class="banner__subtitle">Nombre, capacidad y ciudad</p>
		</div>
	</section>

	<section class="section">
		<div class="container">
			<div class="grid grid--3">
				<c:if test="${not empty estadios}">
					<c:forEach var="e" items="${estadios}">
						<article class="card">
							<!-- Puedes asignar imágenes específicas si luego agregas un campo en BD -->
							<img src="${pageContext.request.contextPath}/img/portada.png"
								alt="${e.nombre}" class="card__media">
							<div class="card__body">
								<h3 class="card__title">${e.nombre}</h3>
								<p class="card__meta">
									Capacidad: <strong>${e.capacidad}</strong>
								</p>
							</div>
						</article>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</section>

	<jsp:include page="/fragments/footer.jspf" />

</body>
</html>
