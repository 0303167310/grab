import { auth } from "../../config/firebase";
import { createUserWithEmailAndPassword } from "firebase/auth";
function SignUpButton({email, password}) {
    const signUp = async () => {
        try {
          await createUserWithEmailAndPassword(auth, email, password);
        } catch (e) {
          console.error(e);
        }
    };
    return (<button onClick={signUp}> Sign Up </button>)
}
export default SignUpButton