<template>
    <div class="row">
        <div class="material_popular_container" v-for="i in index_popular">
            <img :src="'/storage/approved_materials/' + materials_popular[i-1].material_path" alt="">
            <div class="rating_btn" v-if="user != null">
                <button class="unlike" v-if="materials_popular[i-1].is_liked" @click="like(materials_popular[i-1].material_id, $event)">не понравилось</button>
                <button class="like" v-else @click="like(materials_popular[i-1].material_id, $event)">понравилось</button>
            </div>
            <p>{{ materials_popular[i-1].likes }}</p>
            <p>{{ materials_popular[i-1].nikname }}</p>
            <img style="width: 100px;" :src="'/storage/profile_pics/' + materials_popular[i-1].user_path" alt="">
        </div>
        <hr>
        main
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
                materials: null,
                materials_popular: null,
                index: null,
                index_popular: null,
                last_id: null,
                user: window.Laravel.user
            }
        }, created(){
            this.$axios.get('http://127.0.0.1:8000/api/maindata').then(response => {
                this.materials = response.data.data;
                this.index = this.materials.length
            })
            this.$axios.get('http://127.0.0.1:8000/api/maindatapopular').then(response => {
                console.log(response.data.data)
                this.materials_popular = response.data.data;
                this.index_popular = this.materials.length +1

            })
            window.addEventListener('scroll', this.handleScroll);
        }, methods: {

            handleScroll() {
            // window.scrollTo(0, document.body.scrollHeight || document.documentElement.scrollHeight)
                if (document.documentElement.scrollTop + window.innerHeight >= document.documentElement.scrollHeight - 10) {
                    console.log('sees')
                window.removeEventListener('scroll', this.handleScroll)
                this.$axios.post('http://127.0.0.1:8000/api/moredata', {
                    id: this.last_id
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
            }
        }
    }

</script>