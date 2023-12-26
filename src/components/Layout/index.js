import Header from './header'
import Sidebar from './sidebar'

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