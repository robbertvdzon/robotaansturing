<template id="manual">
  <app-frame>

    <div>

      <nav>
        <ul class="nav nav-pills pull-right">
          <li role="presentation"><a href="#" id="manualPrev"><</a></li>
          <li role="presentation"><a href="#" id="manualNext">></a></li>
        </ul>
      </nav>

      <nettoets-header activebutton="operationallog" title="Manual"></nettoets-header>
      <div class="myBorder">
        Manual actions
        <span>
        </span>
      </div>
      <span>
              <button type="submit" v-on:click="home_vert">home vertical</button>
              <button type="submit" v-on:click="home_hor">home horizontal</button>
              <button type="submit" v-on:click="sleeping">Sleep</button>
       </span>
      <br>
      <span>
              <button type="submit" v-on:click="clamp">Pak</button>
              <button type="submit" v-on:click="release">Laat los</button>
       </span>
      <br>
      <br>
      Naar vlak:
      <input v-model="vlak" >
      <button type="submit" v-on:click="movevlak">naar vlak</button>
      <br>
      <br>
      Manual pos:
      <input v-model="pos" >
      <button type="submit" v-on:click="move">move</button>
      <br>
      <br>
      A8:
      <input v-model="a8pos" >
      <button type="submit" v-on:click="saveA8">Save</button>
      <br>
      H1:
      <input v-model="h1pos" >
      <button type="submit" v-on:click="saveH1">Save</button>
      <br>

    </div>
  </app-frame>
</template>
<script>
Vue.component("manual", {
  template: "#manual",
  data: () => ({
    manual: null,
    pos:"1000,1000",
    a8pos:"",
    h1pos:"",
    vlak:"A8"
  }),
  created() {
    this.load()
  },
  methods: {
    load: function (event) {
      fetch(`/api/a8`)
      .then(res => res.text())
      .then(text => this.a8pos=text)
      .catch(() => alert("Error"));

      fetch(`/api/h1`)
      .then(res => res.text())
      .then(text => this.h1pos=text)
      .catch(() => alert("Error"));

    },
    home_vert: function (event) {
      fetch(`/api/home_vert`)
      .catch(() => alert("Error"));
    },
    home_hor: function (event) {
      fetch(`/api/home_hor`)
      .catch(() => alert("Error"));
    },
    sleeping: function (event) {
      fetch(`/api/sleep`)
      .catch(() => alert("Error"));
    },
    clamp: function (event) {
      fetch(`/api/clamp`)
      .catch(() => alert("Error"));
    },
    release: function (event) {
      fetch(`/api/release`)
      .catch(() => alert("Error"));
    },
    move: function (event) {
      axios.post(`/api/move`, this.pos)
      .then(res => {
      })
      .catch(error => {
        alert("Error")
      })
    },
    movevlak: function (event) {
      axios.post(`/api/movevlak`, this.vlak)
      .then(res => {
      })
      .catch(error => {
        alert("Error")
      })
    },
    saveA8: function (event) {
      axios.post(`/api/a8`, this.a8pos)
      .then(res => {
      })
      .catch(error => {
        alert("Error")
      })
    },
    saveH1: function (event) {
      axios.post(`/api/h1`, this.h1pos)
      .then(res => {
      })
      .catch(error => {
        alert("Error")
      })
    },

  }
});

$(document).ready(function () {
  $("#manualPrev").click(function () {
    window.location.href = "/rebuild";
  });
  $("#manualNext").click(function () {
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
