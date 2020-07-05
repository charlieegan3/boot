<template>
  <div class="pa2">
    <button class="db" v-on:click="createServer">Create</button>
    <input class="w-100" id="ip" type="text" :value=message />
    <button class="db" v-on:click="copy">Copy</button>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  mounted() { },
  data() {
    return { message: "" }
  },
  methods: {
    copy: function() {
      var copyText = document.querySelector("#ip");
      copyText.select();
      document.execCommand("copy");
    },

    createServer: function() {
      const config = {
        headers: { Authorization: `Bearer ${localStorage.token}` }
      };
      const requestData = JSON.parse(localStorage.data);

      const app = this;
      axios.post("https://api.hetzner.cloud/v1/servers", requestData, config).then(({ data }) => {
        app.message = data.server.public_net.ipv4.ip;
      }).catch(function (error) {
        app.message = error;
      })
    }
  },
  watch: { },
  computed: { },
  components: { }
}
</script>
