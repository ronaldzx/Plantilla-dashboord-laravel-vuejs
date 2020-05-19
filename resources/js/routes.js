import Vue from 'vue'
import VueRouter from 'vue-router'
import Example from './components/ExampleComponent.vue'
import TicketForm from './components/TicketForm.vue'
Vue.use(VueRouter)

export default new VueRouter({
    mode:'history',
    routes: [
        {
            path:'/example',
            name: 'example',
            component:Example
        },
        {
            path:'/ticket',
            name:'ticket_form',
            component:TicketForm
        }
    ],
    base: process.env.BASE_URL,
})