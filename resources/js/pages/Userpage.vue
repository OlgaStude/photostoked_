<template>
    <div class="row">
        <div id="personal">
            <img style="width: 100px;" id="persona_pfp" :src="'/storage/profile_pics/'+owner.path" alt="">
            <div id="persona_info">
                <div id="top_fragment">
                    <p>Это страница, {{ owner.nikname }}</p>
                </div>
                <p>{{ owner.add_info }}</p>
            </div>
        </div>
        
        <div id="owner" v-if="user.id == owner.id">
            <router-link to="/edit">Edit page</router-link>
        </div>
        <div id="guest" v-else>
            <button v-if="subscribed" @click="subscribe">Отписаться</button>
            <button v-else @click="subscribe">Подписаться</button>
        </div>
        <div class="material_container" v-for="i in index">
            <img :src="'/storage/approved_materials/' + materials[i-1].material_path" alt="">
            <div class="rating_btn" v-if="user != null">
                <button class="unlike" v-if="materials[i-1].is_liked" @click="like(materials[i-1].material_id, $event)">не понравилось</button>
                <button class="like" v-else @click="like(materials[i-1].material_id, $event)">понравилось</button>
            </div>
            <p>{{ materials[i-1].likes }}</p>
            <p>{{ materials[i-1].nikname }}</p>
            <img style="width: 100px;" :src="'/storage/profile_pics/' + materials[i-1].user_path" alt="">
            <p class="last_number">{{ last_id = materials[i-1].material_id }}</p>
        </div>
    </div>
</template>

<style>

.last_number{
    display: none;
}

.unlike{
    background-color: rgb(184, 97, 97);
}

.like{
    background-color: gray;
}

</style>

<script>

    export default{
        name: 'Home',
        data(){
            return {
                user: window.Laravel.user,
                owner: {},
                materials: null,
                index: null,
                last_id: null,
                subscribed: false,
            }
        }, created(){
            this.$axios.get('http://127.0.0.1:8000/api/getuser/'+window.location.href.substring(window.location.href.lastIndexOf('/') + 1)).then(response => {
                this.owner = response.data;
            })
            this.$axios.get('http://127.0.0.1:8000/api/subcheck/'+window.location.href.substring(window.location.href.lastIndexOf('/') + 1)).then(response => {
                this.subscribed = response.data
            })
            this.$axios.get('http://127.0.0.1:8000/api/usermaterials/'+window.location.href.substring(window.location.href.lastIndexOf('/') + 1)).then(response => {
                this.materials = response.data.data;
                this.index = this.materials.length
            })
            window.addEventListener('scroll', this.handleScroll);

        }, methods: {
            handleScroll() {
            // window.scrollTo(0, document.body.scrollHeight || document.documentElement.scrollHeight)
                if (document.documentElement.scrollTop + window.innerHeight >= document.documentElement.scrollHeight - 10) {
                    console.log('sees')
                window.removeEventListener('scroll', this.handleScroll)
                this.$axios.post('http://127.0.0.1:8000/api/moredatauser', {
                    id: this.last_id,
                    id_user: this.owner.id
                 }).then(response => {
                     console.log(response.data)
                     for (let i = 0; i < response.data.data.length; i++) {
                        this.materials.push(response.data.data[i]);
                      }
                        
                    
                    this.index = this.materials.length
            window.addEventListener('scroll', this.handleScroll);
            })
            }
            },
            like(id, e){
                this.$axios.post('http://127.0.0.1:8000/api/like', {
                    id: id
                 }).then(response => {
                    if(e.target.getAttribute('class') == 'like'){
                        e.target.parentElement.nextElementSibling.innerHTML = parseInt(e.target.parentElement.nextElementSibling.innerHTML) + 1
                        e.target.setAttribute('class', 'unlike')
                    } else{
                        e.target.parentElement.nextElementSibling.innerHTML = parseInt(e.target.parentElement.nextElementSibling.innerHTML) - 1
                        e.target.setAttribute('class', 'like')
                    }
                     
            })
            },
            subscribe(e){
                e.preventDefault();
                this.$axios.post('http://127.0.0.1:8000/api/follow', {
                    followed_id: this.owner.id,
                 }).then(response => {
                     
            })
            }
        }
    }

</script>