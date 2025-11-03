<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"   uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"  %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Resultados — Liga BetPlay 2025</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
  <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
</head>
<body>

<jsp:include page="/fragments/header.jspf"/>

<section class="banner">
  <img class="banner__img" src="${pageContext.request.contextPath}/img/portada.png" alt="Resultados"/>
  <div class="banner__overlay"></div>
  <div class="banner__content">
    <h2 class="banner__title">Resultados</h2>
    <p class="banner__subtitle">Marcadores por jornada</p>
  </div>
</section>

<section class="section">
  <div class="container">
    <div class="table-wrap">
      <table id="tablaResultados" class="display" style="width:100%">
        <thead>
        <tr>
          <th>Jornada</th><th>Fecha</th><th>Local</th><th>Goles L</th>
          <th>Visita</th><th>Goles V</th><th>Estadio</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${not empty partidos}">
          <c:forEach var="p" items="${partidos}">
            <tr>
              <td>${p.jornada}</td>
              <td><fmt:formatDate value="${p.fecha}" pattern="yyyy-MM-dd"/></td>
              <td>${p.local}</td>
              <td>${p.golLocal}</td>
              <td>${p.visita}</td>
              <td>${p.golVisita}</td>
              <td>${p.estadio}</td>
            </tr>
          </c:forEach>
        </c:if>
        </tbody>
      </table>
    </div>
  </div>
</section>

<jsp:include page="/fragments/footer.jspf"/>

<script>
  $(function() {
    $('#tablaResultados').DataTable({
      language: { url: '//cdn.datatables.net/plug-ins/1.13.7/i18n/es-ES.json' },
      order: [[0, 'asc']],
      pageLength: 10
    });
  });
</script>

</body>
</html>
