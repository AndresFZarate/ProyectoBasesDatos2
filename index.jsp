<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Liga BetPlay DIMAYOR</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>

  <%@ include file="/WEB-INF/fragments/header.jspf" %>

  <section class="banner">
    <img class="banner__img" src="${pageContext.request.contextPath}/img/portada.png" alt="Liga BetPlay"/>
    <div class="banner__overlay"></div>
    <div class="banner__content">
      <h2 class="banner__title">LIGA BETPLAY DIMAYOR</h2>
      <p class="banner__subtitle">Pasión, competencia y fútbol colombiano</p>
    </div>
  </section>

  <section class="section section--news" style="--news-bg:url('${pageContext.request.contextPath}/img/BannerFutbol.png')">
    <div class="container">
      <h2 class="section__title">Últimas Noticias</h2>
      <div class="grid grid--4">
        <article class="card card--news"><h3 class="card__title">Modificaciones en Programación</h3><p class="card__text">Ajustes de la fecha 18 del torneo.</p><a class="btn btn--primary" href="#">Ver más</a></article>
        <article class="card card--news"><h3 class="card__title">Designaciones Arbitrales</h3><p class="card__text">Árbitros para la jornada 17.</p><a class="btn btn--primary" href="#">Ver más</a></article>
        <article class="card card--news"><h3 class="card__title">Datos Previos</h3><p class="card__text">OPTA comparte claves de la fecha.</p><a class="btn btn--primary" href="#">Ver más</a></article>
        <article class="card card--news"><h3 class="card__title">Tiempo Efectivo</h3><p class="card__text">Reporte del tiempo efectivo de juego.</p><a class="btn btn--primary" href="#">Ver más</a></article>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="grid grid--3">
        <a class="tile" href="${pageContext.request.contextPath}/posiciones"><h3 class="tile__title">Tabla de Posiciones</h3><p class="tile__text">Clasificación actualizada.</p></a>
        <a class="tile" href="${pageContext.request.contextPath}/resultados"><h3 class="tile__title">Resultados</h3><p class="tile__text">Marcadores por fecha.</p></a>
        <a class="tile" href="${pageContext.request.contextPath}/estadios"><h3 class="tile__title">Estadios</h3><p class="tile__text">Capacidades y ciudades.</p></a>
      </div>
    </div>
  </section>

  <%@ include file="/WEB-INF/fragments/footer.jspf" %>
</body>
</html>
