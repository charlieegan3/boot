<template>
  <div class="pa2">
    Server Config:
    <button v-on:click="updateData">Build</button>
    <pre style="overflow-x: scroll;">{{ JSON.stringify(data, undefined, 2) }}</pre>
  </div>
</template>

<script>
export default {
  mounted() { this.updateData() },
  data() {
    return {
      data: {}
    }
  },
  methods: {
  updateData: function() {
      const userDataLines = localStorage.userData.split("\n")
      const secretEnvLines = localStorage.secretEnv.split("\n")

      const generatedUserData = userDataLines.slice(0,1)
        .concat(secretEnvLines)
        .concat(userDataLines.slice(2,userDataLines.length));

      this.data = {
        "name": localStorage.name,
        "server_type": "ccx11",
        "location": "nbg1",
        "start_after_create": true,
        "image": localStorage.image,
        "ssh_keys": [ "git@charlieegan3.com" ],
        "user_data": generatedUserData.join("\n"),
        "automount": false
      }

      localStorage.data = JSON.stringify(this.data);
    }
  },
  watch: { },
  components: { }
}
</script>
