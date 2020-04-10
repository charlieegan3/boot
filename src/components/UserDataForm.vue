<template>
  <div class="pa2">
    UserData:<br/>
    <textarea class="w-100" rows="10" v-model="userData" placeholder="userdata loading..."></textarea>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  mounted() {
    if (localStorage.userData) {
      this.userData = localStorage.userData;
    }
  },
  data() {
    return {
      userData: ""
    }
  },
  methods: {
    loadUserData: function() {
      axios.get("https://raw.githubusercontent.com/charlieegan3/dev-machine/master/user_data.sh").then(({ data }) => {
        localStorage.userData = data;
      }).catch(function (error) {
        console.log(error);
      })
    }
  },
  watch: {
    userData(newUserData) {
      localStorage.userData = newUserData;
    }
  },
  computed: { },
  components: { }
}
</script>
