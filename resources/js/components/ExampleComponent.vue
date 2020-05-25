<template>
  <div>
    <headerContent-component 
    v-bind:padre="this.$route.params.padre" 
    v-bind:hijo="this.$route.params.hijo" 
    v-bind:icono="this.$route.params.icono">
    </headerContent-component>
    <v-container>
      <v-row>
        <v-col>
          <div class="card">
            <div class="card-header">Example Component</div>
            <div class="card-body">I'm an example component.</div>
          </div>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>
<script>
export default {
  // props: {
  //   hijo: {
  //     type: String,
  //     default:'hijito'
  //   },
  //   padre:{
  //     type: String
  //   },
  //   icono:{
  //     type: String
  //   }
  // },

  mounted() {
    console.log(this.$route.params);
  }
};
</script>
