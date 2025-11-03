<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Equipos — Liga BetPlay</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>

  <%@ include file="/WEB-INF/fragments/header.jspf" %>

  <!-- Banner -->
  <section class="banner banner--small">
    <img class="banner__img" src="${pageContext.request.contextPath}/img/portada.png" alt="Equipos"/>
    <div class="banner__overlay"></div>
    <div class="banner__content">
      <h2 class="banner__title">Equipos</h2>
      <p class="banner__subtitle">Planteles, fundación y títulos</p>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section__header">
        <h3 class="section__title">Listado de equipos</h3>
        <p class="section__subtitle">
          <c:choose>
            <c:when test="${not empty equipos}">
              Se muestran <strong>${fn:length(equipos)}</strong> equipos.
            </c:when>
            <c:otherwise>
              BD no conectada: se muestran <strong>datos de ejemplo</strong>.
            </c:otherwise>
          </c:choose>
        </p>
      </div>

      <div class="table-wrapper">
        <table class="table">
          <thead>
          <tr>
            <th>ID</th>
            <th>Equipo</th>
            <th>Fundación</th>
            <th>Liga</th>
            <th>Copa</th>
            <th>Superliga</th>
            <th>DT (id)</th>
          </tr>
          </thead>
          <tbody>
          <c:choose>
            <!-- MODO REAL: viene lista desde el servlet -->
            <c:when test="${not empty equipos}">
              <c:forEach var="e" items="${equipos}">
                <tr>
                  <td><span class="mono">${e.idEquipo}</span></td>
                  <td>${e.nombre}</td>
                  <td>
                    <c:choose>
                      <c:when test="${not empty e.fundacion}">
                        <fmt:formatDate value="${e.fundacion}" pattern="yyyy-MM-dd"/>
                      </c:when>
                      <c:otherwise>—</c:otherwise>
                    </c:choose>
                  </td>
                  <td class="num">${e.titulosLiga}</td>
                  <td class="num">${e.titulosCopa}</td>
                  <td class="num">${e.titulosSuperliga}</td>
                  <td class="num">${e.dt}</td>
                </tr>
              </c:forEach>
            </c:when>

            <!-- MODO DEMO: sin BD / sin atributo -->
            <c:otherwise>
              <tr><td class="muted" colspan="7">
                No hay conexión a la base de datos (o no se envió el atributo <code>equipos</code>).
                Mostrando contenido de ejemplo para continuar con el front.
              </td></tr>
              <tr>
                <td><span class="mono">MIL</span></td>
                <td>Millonarios FC</td>
                <td>1946-06-18</td>
                <td class="num">16</td>
                <td class="num">3</td>
                <td class="num">1</td>
                <td class="num">101</td>
              </tr>
              <tr>
                <td><span class="mono">ATL</span></td>
                <td>Atlético Nacional</td>
                <td>1947-04-30</td>
                <td class="num">17</td>
                <td class="num">5</td>
                <td class="num">2</td>
                <td class="num">102</td>
              </tr>
              <tr>
                <td><span class="mono">JUN</span></td>
                <td>Junior</td>
                <td>1924-08-07</td>
                <td class="num">10</td>
                <td class="num">2</td>
                <td class="num">1</td>
                <td class="num">103</td>
              </tr>
            </c:otherwise>
          </c:choose>
          </tbody>
        </table>
      </div>

      <!-- accesos rápidos -->
      <div class="grid grid--3 mt-24">
        <a class="tile" href="${pageContext.request.contextPath}/posiciones">
          <h4 class="tile__title">Tabla de posiciones</h4>
          <p class="tile__text">Clasificación al día.</p>
        </a>
        <a class="tile" href="${pageContext.request.contextPath}/jugadores">
          <h4 class="tile__title">Jugadores</h4>
          <p class="tile__text">Planteles y perfiles.</p>
        </a>
        <a class="tile" href="${pageContext.request.contextPath}/estadios">
          <h4 class="tile__title">Estadios</h4>
          <p class="tile__text">Capacidad y ciudades.</p>
        </a>
      </div>
    </div>
  </section>

  <%@ include file="/WEB-INF/fragments/footer.jspf" %>
</body>
</html>
