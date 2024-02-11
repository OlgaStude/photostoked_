<template>
    <div class="container">
      <form action="" enctype="multipart/form-data">
        <input type="text" id="nikname" v-model="nikname" placeholder="nikname" />
        <strong>{{ errors.nikname }}</strong>
        <input
          type="date"
          id="birthdate"
          v-model="birthdate"
          placeholder="birthdate"
        />
        <strong>{{ errors.birthdate }}</strong>
        <input type="email" id="email" v-model="email" placeholder="email" />
        <strong>{{ errors.email }}</strong>
        <input
          type="password"
          id="password"
          v-model="password"
          placeholder="password"
        />
        <strong>{{ errors.password[0] }}</strong>
        <input
          type="password"
          id="password_confirmation"
          v-model="password_confirmation"
          placeholder="password_confirmation"
        />
        <strong>{{ errors.password[1] }}</strong>
        <input type="file" id="pfp" ref="pfp" />
        <strong>{{ errors.pfp }}</strong>
        <button @click="register">Register</button>
      </form>
    </div>
  </template>
  
  
  <script>
  export default {
    name: "Registration",
    data() {
      return {
        nikname: "",
        birthdate: "",
        email: "",
        password: "",
        password_confirmation: "",
        errors: {
          nikname: null,
          birthdate: null,
          email: null,
          password: [],
          password_confirmation: null,
          pfp: null,
        },
      };
    },
    created() {},
    methods: {
      register(e) {
        e.preventDefault();
        this.errors = {
          nikname: null,
          birthdate: null,
          email: null,
          password: [],
          password_confirmation: null,
          pfp: null,
        };
        this.$axios.get("/sanctum/csrf-cookie").then((response) => {
          this.$axios.post("api/register",
              {
                nikname: this.nikname,
                birthdate: this.birthdate,
                email: this.email,
                password: this.password,
                password_confirmation: this.password_confirmation,
                pfp: this.$refs.pfp.files[0],
              },
              {
                headers: {
                  "Content-Type": "multipart/form-data",
                },
              }
            )
            .then((response) => {
              console.log(response);
              if (response.data.status == 200) {
                window.location.href = "/user/" + response.data.user_id;
              } else {
                this.error = response.data.message;
              }
            })
            .catch((err) => {
              if (err.response.data.errors.email) {
                this.errors.email = err.response.data.errors.email[0];
              }
              if (err.response.data.errors.password) {
                this.errors.password = err.response.data.errors.password;
              }
              if (err.response.data.errors.nikname) {
                this.errors.nikname = err.response.data.errors.nikname[0];
              }
              if (err.response.data.errors.birthdate) {
                this.errors.birthdate = err.response.data.errors.birthdate[0];
              }
              if (err.response.data.errors.pfp) {
                this.errors.pfp = err.response.data.errors.pfp[0];
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