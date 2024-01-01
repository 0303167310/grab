import Sidebar from './sidebar'
import Header from './header'
function Layout( {children} ){
    return (
        <div>
            <Header />
            <div classname = 'container'>
                <Sidebar />
                <div classname = 'content'>
                   {children}
                </div>
            </div>
        </div>
    )
}
export default Layout;