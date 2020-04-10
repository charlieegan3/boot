<template>
  <div class="pa2">
    <TokenForm/>
    <UserDataForm/>
    <SecretEnvForm/>
    <ImageForm/>
    <ServerNameForm/>
    <CommandPreview/>
    <CreateServerButton/>
  </div>
</template>

<script>
import axios from 'axios';
import TokenForm from '@/components/TokenForm.vue';
import UserDataForm from '@/components/UserDataForm.vue';
import SecretEnvForm from '@/components/SecretEnvForm.vue';
import ImageForm from '@/components/ImageForm.vue';
import CommandPreview from '@/components/CommandPreview.vue';
import CreateServerButton from '@/components/CreateServerButton.vue';
import ServerNameForm from '@/components/ServerNameForm.vue';

export default {
  name: 'home',
  created() { },
  data() {
    return { }
  },
  methods: { },
  watch: { },
  computed: { },
  components: {
    TokenForm,
    UserDataForm,
    SecretEnvForm,
    ImageForm,
    CommandPreview,
    CreateServerButton,
    ServerNameForm,
  }
}
</script>
