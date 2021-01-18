<template id="home">
  <app-frame>

    <div>

      <nav>
        <ul class="nav nav-pills pull-right">
          <li role="presentation"><a href="#" id="homePrev"><</a></li>
          <li role="presentation"><a href="#" id="homeNext">></a></li>
        </ul>
      </nav>

      <nettoets-header activebutton="operationallog" title="Home"></nettoets-header>
      <div class="myBorder">
        Status
      </div>
      <span>
              <button type="submit" v-on:click="home_vert">home vertical</button>
              <button type="submit" v-on:click="home_hor">home horizontal</button>
       </span>
      <br>
      <span>
              <button type="submit" v-on:click="clamp">Pak</button>
              <button type="submit" v-on:click="release">Laat los</button>
       </span>
    </div>
  </app-frame>
</template>
<script>
Vue.component("home", {
  template: "#home",
  data: () => ({
    home: null,
  }),
  created() {
    this.load()
  },
  methods: {
    load: function (event) {
    },
    home_vert: function (event) {
      fetch(`/api/home_vert`)
      .catch(() => alert("Error"));
    },
    home_hor: function (event) {
      fetch(`/api/home_hor`)
      .catch(() => alert("Error"));
    },
    clamp: function (event) {
      fetch(`/api/clamp`)
      .catch(() => alert("Error"));
    },
    release: function (event) {
      fetch(`/api/release`)
      .catch(() => alert("Error"));
    }

  }
});

$(document).ready(function () {
  $("#homePrev").click(function () {
    window.location.href = "/manual";
  });
  $("#homeNext").click(function () {
    window.location.href = "/status";
  });
});

</script>
<style scoped>
.myBorder {
  color: white;
  background-color: #4d6b85;
}

</style>
