import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import { createPinia } from 'pinia'
import 'normalize.css/normalize.css'
import './assets/css/iconfont.css'
import './assets/css/base.css'
import piniapluginpersistedstate from 'pinia-plugin-persistedstate'
//全导入element-plus
// import ElementPlus from "element-plus";
// import "element-plus/dist/index.css";
//怎么按需修改中文
// import locale from "element-plus/lib/locale/lang/zh-cn";//需要新加的代码

// import zhCn from 'element-plus/dist/locale/zh-cn.mjs'
// import {reactive} from 'vue'
// const { locale } = reactive({
//   locale: zhCn,
// });

//导入接口---挂全局---
import api from '@/api'
import Breadcrumb from './components/Breadcrumb/Breadcrumb.vue'
//vue2: Vue.prototype.$api=api   组件：this.$api.xx() 
const app = createApp(App);
const pinia = createPinia()
pinia.use(piniapluginpersistedstate);
// app.use(ElementPlus, {locale});//需要改变的地方，加入locale
app.component('Breadcrumb',Breadcrumb)
//方法1：挂载全局
app.config.globalProperties.$api = api;
//方法2： provide inject 
// console.log('app',app);
//provide() 接受两个参数：第一个参数是要注入的 key，可以是一个字符串或者一个 symbol，第二个参数是要注入的值。
app.provide('$api',api)
app.use(pinia)
// app.use(ElementPlus);
app.use(router).mount("#app");

