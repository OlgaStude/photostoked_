import { createWebHistory, createRouter } from "vue-router"

import test from '../pages/test_page.vue'
import Registration from '../pages/Registration.vue'
import Login from '../pages/Login.vue'
import Admin from '../pages/Admin.vue'
import Home from '../pages/Home.vue'
import Catalog from '../pages/Catalog.vue'
import Userpage from '../pages/Userpage.vue'
import Edituser from '../pages/Edituser.vue'
import Liked from '../pages/Liked.vue'

export const routes = [
    {
        name: 'test',
        path: '/test',
        component: test
    },
    {
        name: 'Registration',
        path: '/registration',
        component: Registration
    },
    {
        name: 'Login',
        path: '/login',
        component: Login
    },
    {
        name: 'Admin',
        path: '/admin',
        component: Admin
    },
    {
        name: 'Home',
        path: '/',
        component: Home
    },
    {
        name: 'Catalog',
        path: '/catalog',
        component: Catalog
    },
    {
        name: 'Userpage',
        path: '/user/:id',
        component: Userpage
    },
    {
        name: 'Edituser',
        path: '/edit',
        component: Edituser
    },
    {
        name: 'Liked',
        path: '/liked',
        component: Liked
    },
]

const router = createRouter({
    history: createWebHistory(),
    routes: routes,
})

export default router;

