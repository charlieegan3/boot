<template>
  <div class="pa2">
    <input v-model="token" placeholder="token">
  </div>
</template>

<script>
export default {
  name: 'home',
  mounted() {
	  if (localStorage.token) {
		  this.token = localStorage.token;
	  }
  },
  data() {
    token: ''
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
