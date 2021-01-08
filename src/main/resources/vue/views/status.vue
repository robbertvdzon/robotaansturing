<template id="status">
    <app-frame>

        <div>

          <nav>
            <ul class="nav nav-pills pull-left">
              <li role="presentation" ><a href="#" id="statusPrev"><</a></li>
            </ul>
            <ul class="nav nav-pills pull-right">
              <li role="presentation" ><a href="#" id="statusNext">></a></li>
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
  $("#statusPrev").click(function () {
    window.location.href = "/home";
  });
  $("#statusNext").click(function () {
    window.location.href = "/demo";
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
