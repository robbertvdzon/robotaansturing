<template id="home">
    <app-frame>

        <div>

          <nav>
            <ul class="nav nav-pills pull-right">
              <li role="presentation" ><a href="#" id="homePrev"><</a></li>
              <li role="presentation" ><a href="#" id="homeNext">></a></li>
            </ul>
          </nav>

              <nettoets-header activebutton="operationallog" title="Home"></nettoets-header>
            <div class="myBorder">
            Status
        <span>
              <button type="submit" v-on:click="home_vert">home vertical</button>
              <button type="submit" v-on:click="home_hor">home horizontal</button>
        </span>
            </div>
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
                    .catch(() => alert("Error home vert"));
            },
            home_hor: function (event) {
                fetch(`/api/home_hor`)
                    .catch(() => alert("Error home hor"));
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
  .myBorder
  {
    width : 250px,
    height : 250px,
      border: 5px outset red;
      background-color: lightblue;
  }

</style>
