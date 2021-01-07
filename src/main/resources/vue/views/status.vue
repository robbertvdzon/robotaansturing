<template id="status">
    <app-frame>
        <div>
            <div class="myBorder">
            Schaakrobot
        <span>
              <button type="submit" v-on:click="rebuild">rebuild</button>
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
