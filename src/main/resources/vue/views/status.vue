<template id="status">
    <app-frame>

        <div>
          <table with="480px">
            <tr>
              <td align="left" width="100px">
                <button type="submit" v-on:click="prev">prev</button>
              </td>
              <td width="280px">

              </td>
              <td width="100px" align="right">
                <button type="submit" v-on:click="next">next</button>
              </td>
            </tr>
          </table>
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
  .myBorder
  {
    width : 250px,
    height : 250px,
      border: 5px outset red;
      background-color: lightblue;
  }

</style>
