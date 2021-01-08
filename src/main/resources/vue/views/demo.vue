<template id="demo">
    <app-frame>
        <div>
              <nettoets-header activebutton="operationallog" title="Demo"></nettoets-header>
            <div class="myBorder">
            Demo
        <span>
              <button type="submit" v-on:click="rebuild">rebuild</button>
              <button type="submit" v-on:click="restart">restart</button>
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
