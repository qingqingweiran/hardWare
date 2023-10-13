import Vue from 'vue'
import App from './App.vue'

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import routers from './router/index.js';
import VueRouter from 'vue-router';
import axios from 'axios';

Vue.config.productionTip = false
Vue.use(ElementUI);
Vue.use(VueRouter);
Vue.use(axios);


new Vue({
  render: h => h(App),
  router: routers,
}).$mount('#app')
