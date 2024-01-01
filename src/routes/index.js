import Home from '../pages/home';
import Ride from '../pages/ride';
import User from '../pages/user';
import Driver from '../pages/driver';
import Auth from '../components/Auth/auth'

const privateRoutes = [
    {path: '/', component: Home},
    {path: '/ride', component: Ride},
    {path: '/user', component: User},
    {path: '/driver', component: Driver},
]
const publicRoutes = [
    {path: '/auth', component: Auth},
]
export { privateRoutes, publicRoutes }