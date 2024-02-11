<template>
    <div class="row">
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
                materials: null,
                index: null,
                last_id: null,
            }
        }, created(){
            this.$axios.get('http://127.0.0.1:8000/api/getuser/'+window.Laravel.user.id).then(response => {
                this.owner = response.data;
            })
            this.$axios.get('http://127.0.0.1:8000/api/userliked/'+window.Laravel.user.id).then(response => {
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
                this.$axios.post('http://127.0.0.1:8000/api/moredataliked', {
                    id: this.last_id,
                    id_user: this.user.id
                 }).then(response => {
                     console.log(response.data)
                     console.log(this.last_id)
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
            }
        }
    }

</script>