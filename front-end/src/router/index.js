
import { createRouter, createWebHistory } from 'vue-router'


const router = new createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
            path: '/',
            name: 'index',
            component: () => import("@/App.vue"),
        },
        {
            path: '/zao',
            name: 'zao',
            component: () => import("@/components/Zao.vue")
        },
        {
            path: '/liu',
            name: 'liu',
            component: () => import("@/components/Liu.vue")
        },

    ]
})

export default router

