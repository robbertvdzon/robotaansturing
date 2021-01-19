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
      <br>
      <button type="submit" v-on:click="sleeping">Sleep</button>
      <br>
      <br><br>
      <button type="submit" v-on:click="saveDemo">saveDemo</button>
      <button type="submit" v-on:click="startDemoOnce">start Demo once</button>
      <button type="submit" v-on:click="startDemoLoop">start Demo loop</button>
      <button type="submit" v-on:click="stopDemo">stop Demo</button>
      <br>
      Naar vlak:
      <input v-model="vlak" >
      <button type="submit" v-on:click="movevlak">naar vlak</button>
      <br>
      Manual pos:
      <input v-model="pos" >
      <button type="submit" v-on:click="move">move</button>
      <br>
      A8:
      <input v-model="a8pos" >
      <button type="submit" v-on:click="saveA8">Save</button>
      <br>
      H1:
      <input v-model="h1pos" >
      <button type="submit" v-on:click="saveH1">Save</button>
      <br>
      <textarea v-model="demo" rows="10" cols="20"></textarea>
    </div>
  </app-frame>
</template>
<script>
Vue.component("home", {
  template: "#home",
  data: () => ({
    home: null,
    demo:"hoi",
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
      fetch(`/api/demo`)
      .then(res => res.text())
      .then(text => this.demo=text)
      .catch(() => alert("Error"));

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
    saveDemo: function (event) {
      axios.post(`/api/demo`, this.demo)
      .then(res => {
      })
      .catch(error => {
        alert("Error")
      })
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
    startDemoOnce: function (event) {
      fetch(`/api/startdemoonce`)
      .catch(() => alert("Error"));
    },
    startDemoLoop: function (event) {
      fetch(`/api/startdemoloop`)
      .catch(() => alert("Error"));
    },
    stopDemo: function (event) {
      fetch(`/api/stopdemo`)
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
