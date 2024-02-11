<template>
    <div class="row">
        This is admin page
        <div class="material_container" v-for="i in index">
            <img :src="'/storage/sent_materials/' + materials[i-1].material_path" alt="">
            <button @click="download(materials[i-1].material_path)">скачать</button>
            <p>{{ materials[i-1].nikname }}</p>
            <button @click="delete_function(materials[i-1].material_id)">Отклонить работу</button>
            <img :src="'/storage/profile_pics/' + materials[i-1].user_path" style="width: 100px;" alt="">
            <input type="text" :value="materials[i-1].tags" ref="tags">
            {{ errors.tags[i-1] }}
            <select name="" id="" @change="onChangeType($event, i)">
                <option value="video">Видео</option>
                <option value="illustration">Иллюстрация</option>
                <option value="photo">Фото</option>
            </select>
            <select name="" id="" @change="onChangeFormat($event, i)">
                <option value="vertical">Вертикальная</option>
                <option value="horrizontal">Горризонтальная</option>
                <option value="squere">Квадрат</option>
            </select>
            <input type="file" ref="watermarked_version">
            {{ errors.material[i-1] }}
            <button @click="approve(materials[i-1].material_id, materials[i-1].user_id, i)">Принять работу</button>
            <hr>
        </div>

    </div>
</template>


<script>

    export default{
        name: 'Admin',
        data(){
            return{
                materials: null,
                type: [],
                format: [],
                index: null,
                errors: {
                    tags: [],
                    material: []
                }
            }
        }, created(){
            this.$axios.get('http://127.0.0.1:8000/api/getinadmin').then(response => {
                this.materials = response.data.data;
                console.log(response.data)
                this.index = this.materials.length
                for(let i =0; i < this.materials.length; i++){
                    this.type[i] = 'video'
                    this.format[i] = 'vertical'
                    this.errors.tags[i] = '';
                    this.errors.material[i] = '';
                }
            })
            
        }, methods: {
            download(path){
                this.$axios.get('http://127.0.0.1:8000/storage/sent_materials/' + path).then(response => {
                    let fileUrl = 'http://127.0.0.1:8000/storage/sent_materials/' + path;
                    console.log(fileUrl);
                    let fileLink = document.createElement('a');
                    fileLink.href = fileUrl;

                    fileLink.setAttribute('download', path);
                    document.body.appendChild(fileLink)

                    fileLink.click();
            })
            },
            delete_function(id) {
                this.$axios.post('http://127.0.0.1:8000/api/delete', {
                    id: id
                }).then((response) => {
                    console.log(response);
                    this.$axios.get('http://127.0.0.1:8000/api/getinadmin').then(response => {
                        this.materials = response.data.data;
                        this.index = this.materials.length
                        for(let i =0; i < this.materials.length; i++){
                        this.type[i] = 'video'
                        this.format[i] = 'vertical'
                        this.errors.tags[i] = '';
                        this.errors.material[i] = '';
                    }
                })
                })
            },
            onChangeType(e, id){
                this.type[id -1] = e.target.value
            },
            onChangeFormat(e, id){
                this.format[id-1] = e.target.value
            },
            approve(material_id, user_id, index){
                
                // console.log(this.$refs['tags'][id-1].value)
                console.log(index - 1)
                
                this.errors = {
                    tags: [],
                    material: []
                }
                this.$axios.post("http://127.0.0.1:8000/api/approve",
                {
                    users_id: user_id,
                    material: this.$refs['watermarked_version'][index-1].files[0],
                    material_id: material_id,
                    format: this.format[index-1],
                    type: this.type[index -1],
                    tags: this.$refs['tags'][index-1].value
                },
                {
                headers: {
                    "Content-Type": "multipart/form-data",
                },
                }
                )
                .then((response) => {
                    console.log(response);
                    this.$axios.get('http://127.0.0.1:8000/api/getinadmin').then(response => {
                        this.materials = response.data.data;
                        this.index = this.materials.length
                        for(let i =0; i < this.materials.length; i++){
                            this.type[i] = 'video'
                            this.format[i] = 'vertical'
                            this.errors.tags[i] = '';
                            this.errors.material[i] = '';
                            this.$refs['tags'][index-1].value = null
                        }
                })
                })
                .catch((err) => {
                    if (err.response.data.errors.tags) {
                        this.errors.tags[index-1] = err.response.data.errors.tags[0];
                    }
                    if (err.response.data.errors.material) {
                        this.errors.material[index-1] = err.response.data.errors.material[0];
                    }
                    
                });
                
            },
            incrimentIndex(){
                this.index++
            }
        },
        // beforeRouteEnter(to, from, next) {
        // if(!window.Laravel.user ){
        //     return next("/");
        // }
        // if(window.Laravel.user.is_admin != 1){
        //     return next("/");
        // }
        // next();
    // }
    }

</script>