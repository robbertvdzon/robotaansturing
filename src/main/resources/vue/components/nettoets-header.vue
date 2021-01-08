<template id="nettoets-header">
  <div class="container">
    <div class="header clearfix">
    <nav>
      <ul class="nav nav-pills pull-right">
        <li role="presentation" v-bind:class = "(activebutton=='operationallog')?'active':''" ><a href="#" id="operationallogpage">Audit log</a></li>
        <li role="presentation" v-bind:class = "(activebutton=='berekening')?'active':''" ><a href="#" id="berekeningpage">Toets</a></li>
      </ul>
    </nav>
    <table>
      <tr>
        <td>
          <img _ngcontent-byh-c1="" alt="Liander Logo" width="100px" src="/logo_liander.hd.png">
        </td>
        <td width="20px">
        </td>
        <td>
          <h3 class="header_title" id="header_title" name="header_title">{{ title }}</h3>

        </td>
      </tr>
    </table>
      <div style="display: flex; justify-content: flex-end">
        <div>
          {{$javalin.state.currentUser}}
          <a href="/authentication_logout" ><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
Vue.component("nettoets-header", {
  props: ['activebutton', 'title'],
  template: "#nettoets-header"});

$(document).ready(function () {
  $("#berekeningpage").click(function () {
    window.location.href = "/berekening";
  });
  $("#auditlogpage").click(function () {
    window.location.href = "/auditlog";
  });
  $("#operationallogpage").click(function () {
    window.location.href = "/operationallog";
  });
});

</script>
