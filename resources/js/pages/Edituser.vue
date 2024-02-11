<template>
    <div id="container">
        <div id="top_text">
            <a :href="$router.resolve({name: 'Userpage', params: { id: user.id }}).href">User page<p id="go_bak_text">Назад на страницу</p></a>
        </div>
        <form>
            <div id="form_left">
                <input type="text" name="nikname" placeholder="изменить ваше прозвище" v-model="nikname">
                <p>{{ errors.nikname }}</p>
                <input type="text" name="email" placeholder="изменить почту" v-model="email">
                <p>{{ errors.email }}</p>
                <input type="date" name="birthdate" v-model="birthdate">
                <p>{{ errors.birthdate }}</p>
                <textarea name="add_info" id="" cols="30" placeholder="расскажите немного о себе" rows="10"  v-model="add_info"></textarea>
                <p>{{ errors.add_info }}</p>
                <button @click="edit">Сохранить изменения</button>
            </div>
            {{ success }}
            <div id="form_right">
                <label class="custom-file-upload input-file">
                    <input class="file_upload" type="file" ref="pfp" name="pfp">
                    <span id="file_selected"></span>
                    <P>Выберите фото для профиля</P>
                </label>
            </div>            
            <p>{{ errors.pfp }}</p>
            
        </form>
    </div>
</template>


<script>

    export default{
        name: 'Home',
        data(){
            return{
                user: window.Laravel.user,
                nikname: window.Laravel.user.nikname,
                email: window.Laravel.user.email,
                birthdate: window.Laravel.user.birthdate,
                add_info: window.Laravel.user.add_info,
                errors: {
                    nikname: "",
                    email: "",
                    birthdate: "",
                    add_info: "",
                    pfp: "",
                },
                success: ''
            }
        }, created(){

        }, methods: {
            
            edit(e){
                e.preventDefault();
                
            this.errors = {
                nikname: "",
                email: "",
                birthdate: "",
                add_info: "",
                pfp: "",
            }
            this.success = ''
            this.$axios
            .post("http://127.0.0.1:8000/api/edit", {
                nikname: this.nikname,
                email: this.email,
                birthdate: this.birthdate,
                add_info: this.add_info,
                pfp: this.$refs.pfp.files[0],
            },
              {
                headers: {
                  "Content-Type": "multipart/form-data",
                },
              })
            .then((response) => {
              console.log(response.data);
              this.success = 'Данные обновлены!'
            })
            .catch((err) => {
              console.log(err.response.data);
              if (err.response.data.errors.nikname) {
                this.errors.nikname = err.response.data.errors.nikname[0];
              }
              if (err.response.data.errors.email) {
                this.errors.email = err.response.data.errors.email[0];
              }
              if (err.response.data.errors.birthdate) {
                this.errors.birthdate = err.response.data.errors.birthdate[0];
              }
              if (err.response.data.errors.add_info) {
                this.errors.add_info = err.response.data.errors.add_info[0];
              }
              if (err.response.data.errors.pfp) {
                this.errors.pfp = err.response.data.errors.pfp[0];
              }
              
            });
            }
        }
    }

</script>