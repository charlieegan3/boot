<template>
  <div class="pa2">
    Image:<br/>
    <input v-model="image" placeholder="image loading...">
  </div>
</template>

<script>
import axios from 'axios';

export default {
  mounted() {
    this.loadImage()
  },
  data() {
    return {
      image: ""
    }
  },
  methods: {
    loadImage: function() {
      const config = {
        headers: { Authorization: `Bearer ${localStorage.token}` }
      };

      var app = this;
      axios.get("https://api.hetzner.cloud/v1/images", config).then(({ data }) => {
        var selectedImage = "";
        for (var i = 0; i < data.images.length; i++) {
          if (data.images[i].description.startsWith("dev-machine")) {
            selectedImage = data.images[i].id;
          }
        }
        app.image = selectedImage;
      }).catch(function (error) {
        console.log(error);
      })
    }
  },
  computed: { },
  components: { }
}
</script>
