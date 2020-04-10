<template>
  <div class="pa2">
    SecretEnv:<br/>
    <textarea class="w-100" rows="10" v-model="secretEnv" placeholder="paste in env"></textarea>
  </div>
</template>

<script>
export default {
  mounted() {
    if (localStorage.secretEnv) {
      this.secretEnv = localStorage.secretEnv;
    }
  },
  data() {
    return {
      secretEnv: ""
    }
  },
  methods: { },
  watch: {
    secretEnv(newSecretEnv) {
      localStorage.secretEnv = newSecretEnv;
    }
  },
  computed: { },
  components: { }
}
</script>
