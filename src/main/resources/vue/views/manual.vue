<template id="manual">
    <app-frame>

        <div>

          <nav>
            <ul class="nav nav-pills pull-right">
              <li role="presentation" ><a href="#" id="manualPrev"><</a></li>
              <li role="presentation" ><a href="#" id="manualNext">></a></li>
            </ul>
          </nav>

              <nettoets-header activebutton="operationallog" title="Manual"></nettoets-header>
            <div class="myBorder">
            Status
        <span>
        </span>
            </div>
        </div>
    </app-frame>
</template>
<script>
    Vue.component("manual", {
        template: "#manual",
        data: () => ({
            manual: null,
        }),
        created() {
            this.load()
        },
        methods: {
            load: function (event) {
            },
            manual: function (event) {
                fetch(`manual`)
                    .catch(() => alert("Error while rebuilding"));
            },
            restart: function (event) {
                fetch(`manual`)
                    .catch(() => alert("Error while restart"));
            }
        }
    });

$(document).ready(function () {
  $("#manualPrev").click(function () {
    window.location.href = "/rebuild";
  });
  $("#manualNext").click(function () {
    window.location.href = "/home";
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
