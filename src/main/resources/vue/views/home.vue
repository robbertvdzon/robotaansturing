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
        Homing
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
      <span>
              <button type="submit" v-on:click="move1">Pos1</button>
              <button type="submit" v-on:click="move2">Pos2</button>
              <button type="submit" v-on:click="move3">Pos3</button>
              <button type="submit" v-on:click="move4">Pos4</button>
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
    move1: function (event) {
      fetch(`/api/move/5000/1000`)
      .catch(() => alert("Error"));
    },
    move2: function (event) {
      fetch(`/api/move/10000/3000`)
      .catch(() => alert("Error"));
    },
    move3: function (event) {
      fetch(`/api/move/10000/10000`)
      .catch(() => alert("Error"));
    },
    move4: function (event) {
      fetch(`/api/move/1000/1000`)
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
