<template>
    <div class="container">
      <form action="" enctype="multipart/form-data">
        <input type="email" id="email" v-model="email" placeholder="email" />
        <strong>{{ errors.email }}</strong>
        <input
          type="password"
          id="password"
          v-model="password"
          placeholder="password"
        />
        <strong>{{ errors.password }}</strong>
        <strong>{{ errors.unmatched }}</strong>
        <button type="submit" @click="login">Register</button>
      </form>
    </div>
  </template>
  
  
  <script>
  export default {
    name: "Home",
    data() {
      return {
        email: "",
        password: "",
        errors: {
          email: null,
          password: null,
          unmatched: null,
        },
      };
    },
    created() {},
    methods: {
      login(e) {
        e.preventDefault();
        this.errors = {
          email: null,
          password: null,
          unmatched: null,
        };
        this.$axios.get("/sanctum/csrf-cookie").then((response) => {
          this.$axios
            .post("api/login", {
              email: this.email,
              password: this.password,
            })
            .then((response) => {
              console.log(response.data);
              if (response.data.status == 422) {
                this.errors.unmatched = response.data.message;
              } else if (response.data.status == 200) {
                if(response.data.is_admin == 1){
                  window.location.href = "/admin"
                }else{
                  window.location.href = "/user/" + window.Laravel.user.id;
                }
              } else {
                this.error = response.data.message;
              }
            })
            .catch((err) => {
              console.log(err.response.data);
              if (err.response.data.errors.email) {
                this.errors.email = err.response.data.errors.email[0];
              }
              if (err.response.data.errors.password) {
                this.errors.password = err.response.data.errors.password[0];
              }
            });
        });
      },
    },
    beforeRouteEnter(to, from, next) {
      if (window.Laravel.isLogged) {
        return next("/user/" + window.Laravel.user.id);
      }
      next();
    },
  };
  </script>