<template id="status">
    <app-frame>
        <div>
            <div class="content">
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
