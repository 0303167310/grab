import './App.css';
import 'firebase/firestore'
import 'firebase/auth'

import { BrowserRouter, Routes, Route, Navigate} from 'react-router-dom';
import { privateRoutes, publicRoutes } from './routes'
import Layout from './components/layout'
//import Sidebar from  './components/layout/sidebar'
//import Home from './pages/home'
//import User from './pages/user'
import { auth } from './config/firebase'
//import Auth from './components/Auth/auth'
function App() {
  const admin = auth.currentUser
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          {publicRoutes.map((route, index) => {
            const Page = route.component;
            return <Route key={index}
                          path={route.path}
                          element={<Page />}
                    />;
          })}
        </Routes>
        <Routes>
          {privateRoutes.map((route, index) => {
            const Page = route.component;
            return <Route key={index}
                          path={route.path}
                          element={admin == null ? (<Navigate to= "/auth" />) : (<Layout><Page /></Layout>)}
                    />;
          })}
        </Routes>
      </BrowserRouter>
    </div>  
  );
}


export default App;
