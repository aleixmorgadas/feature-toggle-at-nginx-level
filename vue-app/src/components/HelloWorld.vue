<template>
  <div class="hello">
    <div><button v-on:click="featureToggle">Go to Default Application (react)</button></div>
    <h1>{{ msg }}</h1>
  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from 'vue-property-decorator';

@Component
export default class HelloWorld extends Vue {
  @Prop() private msg!: string;

  featureToggle() {
    document.cookie = 'Toggle=false';
    this.msg = 'reloading...';

    // eslint-disable-next-line no-restricted-globals
    location.reload();
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
