import { auth } from "../../config/firebase";
import { signOut } from "firebase/auth";
function LogOutButton({email, password}) {
    const logOut = async () => {
        try {
          await signOut(auth);
        } catch (e) {
          console.error(e);
        }
      };
    return (<button onClick={logOut}> Log Out </button>)
}
export default LogOutButton