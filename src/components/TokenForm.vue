<template>
  <div class="pa2">
    Token:
    <input v-model="token" placeholder="token">
  </div>
</template>

<script>
export default {
  mounted() {
    if (localStorage.token) {
      this.token = localStorage.token;
    }
  },
  data() {
    return {
      token: ''
    }
  },
  methods: { },
  watch: {
    token(newToken) {
      localStorage.token = newToken;
    }
  },
  computed: { },
  components: { }
}
</script>
