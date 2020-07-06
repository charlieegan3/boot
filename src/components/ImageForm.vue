<template>
  <div class="pa2">
    Image: <span class="gray">{{ name }}</span><br/>
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
      image: "",
      name: "",
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
            // last image is the one we want
            app.image = data.images[i].id;
            app.name = data.images[i].description;
            // localStorage for other components and later on
            localStorage.image = data.images[i].id;
          }
        }
      }).catch(function (error) {
        console.log(error);
      })
    }
  },
  computed: { },
  components: { }
}
</script>
