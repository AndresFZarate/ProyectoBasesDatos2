<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Estadísticas — Liga BetPlay 2025</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>

<jsp:include page="/fragments/header.jspf"/>

<section class="banner">
  <img class="banner__img" src="${pageContext.request.contextPath}/img/portada.png" alt="Estadísticas"/>
  <div class="banner__overlay"></div>
  <div class="banner__content">
    <h2 class="banner__title">Estadísticas</h2>
    <p class="banner__subtitle">Indicadores y analítica (MongoDB)</p>
  </div>
</section>

<section class="section">
  <div class="container">
    <div class="grid grid--3">
      <article class="stat">
        <h3>Goles por partido</h3>
        <p class="stat__value"><c:out value="${estadisticas.golesPorPartido}" default="-"/></p>
      </article>
      <article class="stat">
        <h3>Promedio de posesión</h3>
        <p class="stat__value"><c:out value="${estadisticas.posesionPromedio}" default="-"/></p>
      </article>
      <article class="stat">
        <h3>Tiros al arco</h3>
        <p class="stat__value"><c:out value="${estadisticas.tirosAlArco}" default="-"/></p>
      </article>
    </div>
  </div>
</section>

<jsp:include page="/fragments/footer.jspf"/>

</body>
</html>
