<template>
  <div>
    <svg-icon icon-class="github" @click="goto" />
  </div>
</template>

<script>
export default {
  name: 'SSRTGit',
  data() {
    return {
      url: 'https://github.com/hexu2/SSRT-Cloud.git'
    }
  },
  methods: {
    goto() {
      window.open(this.url)
    }
  }
}
</script>
