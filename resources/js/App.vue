<template>
    <div class="nav-bar" v-if="isLogged">
        <router-link to="/">Home page</router-link>
        <router-link to="/catalog">Catalog</router-link>
        <a href="" @click="show_sending_form">Отправить свои материалы</a>
        <a :href="$router.resolve({name: 'Userpage', params: { id: user.id }}).href">User page</a>
        <a href="#" @click="logout">logout</a>
    </div>
    <div class="nav-bar" v-else>
        <router-link to="/">Home page</router-link>
        <router-link to="/catalog">Catalog</router-link>
        <router-link to="/login">Log in</router-link>
        <router-link to="/registration">Register</router-link>
    </div>
     <form action="" v-if="form_is_on">
        <input type="file" id="material" ref="material">
        {{ errors.material }}
        <input type="text" name="tags" placeholder="tags" id="tags" v-model="tags">
        {{ errors.tags }}
        {{ success_message }}
        <button type="submit" @click="send_material">
            Создать пост
        </button>
        <button @click="close_form">
            закрыть
        </button>
    </form>
    <router-view></router-view>
</template>

<script>
 export default{
        name: 'App',
        data(){
            return{
                isLogged: false,
                form_is_on: false,
                tags: null,
                user: window.Laravel.user,
                errors: {
                    tags: null,
                    material: null
                },
                success_message: null
            }
        },
        created(){
            if(window.Laravel.isLogged){
                this.isLogged = true
            }
        }, methods: {
            logout (e) {
              e.preventDefault();
              this.$axios.get('/sanctum/csrf-cookie').then(response => {
                this.$axios.post('http://127.0.0.1:8000/api/logout').then(response => {
                    if(response.data.status == 200){
                        window.location.href = '/';
                    } else {
                        console.log(response)
                    }
                }).catch(error => {
                    console.error(error)
                })
              });  
            },
            show_sending_form(e) {
                e.preventDefault();
                this.form_is_on = true
            },
            close_form() {
                this.form_is_on = false
            },
            send_material(e){
                e.preventDefault();
                this.errors = {
                    tags: null,
                    material: null
                }
                this.success_message = ''
                this.$axios
            .request({
                url: "http://127.0.0.1:8000/api/sendingmaterial",
                method: "POST",
                headers: {
                    'Content-Type': 'multipart/form-data'
                },
                data: {
                    tags: this.tags,
                    material: this.$refs.material.files[0],
                }
            }).then(response => {
                        console.log(response.data)
                    if(response.data.status == 200){
                        this.success_message = response.data.message;
                        this.tags = ''
                    } else {
                        console.log(response)
                    }
                }).catch(err => {
                    if (err.response.data.errors.tags) {
                        this.errors.tags = err.response.data.errors.tags[0];
                    }
                    if (err.response.data.errors.material) {
                        this.errors.material = err.response.data.errors.material[0];
                    }
                })
            }

        },
    }
</script>