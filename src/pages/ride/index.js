import { auth } from '../../config/firebase'
function Ride(){
    console.log(auth.currentUser)
    return (
        <h1>Ride</h1>
    )
}
export default Ride;