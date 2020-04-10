<template>
  <div class="pa2">
    <button v-on:click="createServer">Create</button>
    <pre>{{ message }}</pre>
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
    createServer: function() {
      const config = {
        headers: { Authorization: `Bearer ${localStorage.token}` }
      };
      const requestData = JSON.parse(localStorage.data);

      const app = this;
      axios.post("https://api.hetzner.cloud/v1/servers", requestData, config).then(({ data }) => {
        app.message = JSON.stringify(data, undefined, 2);
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
