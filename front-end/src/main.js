// import './assets/main.scss'

import {createApp} from 'vue'
import router from './router'
import App from "@/App.vue";
import '@/assets/css/fonts.css'
import '@/assets/css/bootstrap.min.css'
import '@/assets/css/font-awesome.min.css'
import '@/assets/css/icofont.min.css'
import '@/assets/css/swiper.min.css'
import '@/assets/css/nice-select.css'
import '@/assets/css/style.css'

import '@/assets/js/swiper.min'
import '@/assets/js/jquery.min'
import '@/assets/js/bootstrap.min'

const app = createApp(App)
app.use(router)
app.mount('#app')
