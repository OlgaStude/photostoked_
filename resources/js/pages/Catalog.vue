<template>
    <div class="row">
        <input type="text" name="search_bar" @keyup="search($event)" v-model="search_bar" id="">
        <div id="filter_options" class="closed">
                <div id="format_options">
                    <input type="radio" name="format" v-model="format" value="squere" id="squere">
                    <label for="squere">квадратная</label><br>
                    <input type="radio" name="format" v-model="format" value="horrizontal" id="horrizontal">
                    <label for="horrizontal">горизонтальная</label><br>
                    <input type="radio" name="format" v-model="format" value="vertical" id="vertical">
                    <label for="vertical">вертикальная</label><br>
                </div>
                <div id="type_options">
                    <input type="radio" name="type" v-model="type" value="photo" id="photo">
                    <label for="photo">фото</label><br>
                    <input type="radio" name="type" v-model="type" value="video" id="video">
                    <label for="video">видео</label><br>
                    <input type="radio" name="type" v-model="type" value="illustration" id="illustration">
                    <label for="illustration">иллюстрация</label>
                </div>
                <div id="filter_btns">
                    <button id="sort_btn" @click="filter($event)">сортировать</button>
                    <button id="cancel_btn" @click="cancel_filter($event)">сбросить</button>
                </div>
        </div>
        <div id="tags">
            <div id="tags_wrapper">
                <div class="arrow_btn back_tags"><img id="back_tags" src="{{ asset('storage/img/Arrow_tags.png') }}" alt=""></div>
                <div class="owl-carousel">
                        <div v-for="tag in tags" class="slider__item">
                            <p class="tag"><a @click="tag_search($event)" href="#" class="tag_link">{{ tag.tag_name }}</a></p>
                        </div>
                </div>
            </div>
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


<script>

    export default{
        name: 'Catalog',
        data(){
            return{
                materials: null,
                tags: null,
                index: null,
                last_id: null,
                user: window.Laravel.user,
                search_bar: '',
                search_word: '',
                current_tag: '',
                format: '',
                type: ''
            }
        }, created(){
            this.$axios.get('http://127.0.0.1:8000/api/maindata').then(response => {
                console.log(response.data)
                this.materials = response.data.data;
                this.index = this.materials.length
            })
            this.$axios.get('http://127.0.0.1:8000/api/tags').then(response => {
                console.log(response.data)
                this.tags = response.data
            })
            window.addEventListener('scroll', this.handleScroll);
        }, methods: {
            handleScroll() {
            // window.scrollTo(0, document.body.scrollHeight || document.documentElement.scrollHeight)
            if (document.documentElement.scrollTop + window.innerHeight >= document.documentElement.scrollHeight -10) {
                window.removeEventListener('scroll', this.handleScroll)
                this.$axios.post('http://127.0.0.1:8000/api/moredata', {
                    id: this.last_id,
                    search_word: this.search_word,
                    tag: this.current_tag,
                    type: this.type,
                    format: this.format
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
            search(e){
                if(this.search_bar == ''){
                    this.search_word = ''
                }
                if(e.keyCode == 13){
                    this.search_word = this.search_bar
                    this.$axios.post('http://127.0.0.1:8000/api/searchword', {
                        search_word: this.search_word
                    }).then(response => {
                        console.log(response.data)
                        this.materials = response.data.data;
                        this.index = this.materials.length
                            
                    })
                }
            },
            filter(e){
                e.preventDefault()
                this.$axios.post('http://127.0.0.1:8000/api/filter', {
                    format: this.format,
                    type: this.type,
                    search_word: this.search_word,
                    tag: this.current_tag
                }).then(response => {
                    console.log(response.data)
                    this.materials = response.data.data;
                    this.index = this.materials.length
                        
                })
            },
            cancel_filter(e){
                e.preventDefault()
                this.format = ''
                this.type = ''
                if(this.search_word != ''){
                    this.$axios.post('http://127.0.0.1:8000/api/searchword', {
                        search_word: this.search_word
                    }).then(response => {
                        console.log(response.data)
                        this.materials = response.data.data;
                        this.index = this.materials.length
                            
                    })
                }else if(this.current_tag != ''){
                    this.$axios.post('http://127.0.0.1:8000/api/searchword', {
                        search_word: this.current_tag
                    }).then(response => {
                        console.log(response.data)
                        this.materials = response.data.data;
                        this.index = this.materials.length
                            
                    })
                }else{
                    this.$axios.get('http://127.0.0.1:8000/api/maindata').then(response => {
                    console.log(response.data)
                    this.materials = response.data.data;
                    this.index = this.materials.length
                })
                }
            },
            tag_search(e){
                e.preventDefault();
                this.search_word = '';
                this.search_bar = '';
                this.current_tag = e.target.innerHTML;
                    this.$axios.post('http://127.0.0.1:8000/api/searchword', {
                    search_word: this.current_tag
                    }).then(response => {
                        console.log(response.data)
                        this.materials = response.data.data;
                        this.index = this.materials.length
                            
                    })
                console.log(e.target.innerHTML)
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