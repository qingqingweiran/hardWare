import Vue from "vue";
import VueRouter from "vue-router";
import HardWare   from '../components/hardware.vue'
import HomePage from '../components/Home.vue'

Vue.use(VueRouter);

var routers = new VueRouter({
    routes:[{
        path: "/",
        name: "Home",
        component: HomePage
    },{
        path: "/filter",
        name: "hardware",
        component: HardWare
    }]
})

export default routers;