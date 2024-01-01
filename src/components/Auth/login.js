import { auth } from "../../config/firebase";
import { signInWithEmailAndPassword } from "firebase/auth";
function LogInButton({email, password}) {
    
  const signIn = async () => {
    try {
      await signInWithEmailAndPassword(auth, email, password);
    } catch (e) {
      console.error(e);
    }
  };
  return (<button onClick={signIn}> Sign In </button>)
}
export default LogInButton