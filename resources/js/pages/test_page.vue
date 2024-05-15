<template>
  <div class="container">

    <h1>test is working!!!</h1>
    <carousel :items-to-show="1.5">
        <slide v-for="slide in 10" :key="slide">
          {{ slide }}
        </slide>
    
        <template #addons>
          <navigation />
          <pagination />
        </template>
      </carousel>
    </div>
    </template>
    
<script>
import 'vue3-carousel/dist/carousel.css'
import { Carousel, Slide, Pagination, Navigation } from 'vue3-carousel'
export default {
    
  name: "Dashboard",
  data() {
    return {};
  },
  components: {
    Carousel,
    Slide,
    Pagination,
    Navigation,
  },
  created() {
    this.$axios
      .get("http://127.0.0.1:8000/api/testr")
        .then((response) => {
          console.log(response.data)
        
      });
  },
  methods: {},
};
</script>