<template>
  <div class="pa2">
    ServerName:
    <input v-model="name" placeholder="name">
  </div>
</template>

<script>
export default {
  mounted() {
    if (localStorage.name) {
      this.name = localStorage.name;
    }
  },
  data() {
    return {
      name: ''
    }
  },
  methods: { },
  watch: {
    name(newName) {
      localStorage.name = newName;
    }
  },
  computed: { },
  components: { }
}
</script>
