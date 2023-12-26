import './App.css';
import 'firebase/firestore'
import 'firebase/auth'
import { BrowserRouter as Router, Routes, Route} from 'react-router-dom';
import { routes } from './routes'
import Layout from './components/Layout'
import { auth } from './config/firebase'
import Auth from './components/Auth/auth'

function App() {
  const admin = auth.currentUser
  return (
    <div className="App">
      <section>
      {
        admin == null ? <Auth /> : 
          <Router>
            <Routes>
              {routes.map((route, index) => {
                  return <Route key={index}
                                path={route.path}
                                element={<Layout>{<route.component />}</Layout>}
                          />;
                })}
            </Routes>
          </Router>
      }
      </section>
    </div>  
    
  );
}
export default App;
