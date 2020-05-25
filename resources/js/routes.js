import Vue from 'vue'
import VueRouter from 'vue-router'
import Example from './components/ExampleComponent.vue'
import TicketForm from './components/TicketForm.vue'
import TicketValidacion from './components/TicketValidacion.vue'
Vue.use(VueRouter)

export default new VueRouter({
    mode:'history',
    routes: [
        {
            path:'/example',
            name: 'example',
            component:Example,
            props:true
        },
        {
            path:'/ticket',
            name:'ticket',
            component:TicketForm,
            props:true
        },
        {
            path:'/ticket_validacion',
            name:'ticket_validacion',
            component:TicketValidacion,
            props:true
        }
    ],
    base: process.env.BASE_URL,
})