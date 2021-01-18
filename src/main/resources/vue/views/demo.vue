<template id="demo">
  <app-frame>
    <div>

      <nav>
        <ul class="nav nav-pills pull-right">
          <li role="presentation"><a href="#" id="demoPrev"><</a></li>
          <li role="presentation"><a href="#" id="demoNext">></a></li>
        </ul>
      </nav>


      <nettoets-header activebutton="operationallog" title="Demo"></nettoets-header>
      <div class="myBorder">
        Demo
        <span>
        </span>
      </div>
    </div>
  </app-frame>
</template>
<script>
Vue.component("demo", {
  template: "#demo",
  data: () => ({
    demo: null,
  }),
  created() {
    this.load()
  },
  methods: {
    load: function (event) {
    },
    rebuild: function (event) {
      fetch(`rebuild`)
      .catch(() => alert("Error while rebuilding"));
    },
    restart: function (event) {
      fetch(`rebuild`)
      .catch(() => alert("Error while restart"));
    }
  }
});

$(document).ready(function () {
  $("#demoPrev").click(function () {
    window.location.href = "/status";
  });
  $("#demoNext").click(function () {
    window.location.href = "/rebuild";
  });
});

</script>
<style scoped>
.myBorder {
  color: white;
  background-color: #4d6b85;
}

</style>
