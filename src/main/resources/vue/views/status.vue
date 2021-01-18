<template id="status">
  <app-frame>

    <div>

      <nav>
        <ul class="nav nav-pills pull-right">
          <li role="presentation"><a href="#" id="statusPrev"><</a></li>
          <li role="presentation"><a href="#" id="statusNext">></a></li>
        </ul>
      </nav>
      <nettoets-header activebutton="operationallog" title="Status"></nettoets-header>
      <div class="myBorder">
        Status
        <span>
        </span>
      </div>
    </div>
  </app-frame>
</template>
<script>
Vue.component("status", {
  template: "#status",
  data: () => ({
    status: null,
  }),
  created() {
    this.load()
  },
  methods: {
    load: function (event) {
    },
    prev: function (event) {
      window.location.href = "/home";
    },
    next: function (event) {
      window.location.href = "/demo";
    }
  }
});

$(document).ready(function () {
  $("#statusPrev").click(function () {
    window.location.href = "/home";
  });
  $("#statusNext").click(function () {
    window.location.href = "/demo";
  });
});

</script>
<style scoped>
.myBorder {
  color: white;
  background-color: #4d6b85;
}

</style>
