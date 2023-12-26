import { auth } from "../../config/firebase";
import {
    createUserWithEmailAndPassword,
    signInWithEmailAndPassword,
    signOut,
} from "firebase/auth";
import { useState } from "react";
//import { useNavigate } from 'react-router-dom';

export default function Auth(){
  //const navigate = useNavigate();

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const signUp = async () => {
    try {
      await createUserWithEmailAndPassword(auth, email, password);
    } catch (e) {
      console.error(e);
    }
  };
  const signIn = async () => {
    try {
      await signInWithEmailAndPassword(auth, email, password);
    } catch (e) {
      console.error(e);
    }
    //navigate('/home')
  };
  
  const logOut = async () => {
    try {
      await signOut(auth);
    } catch (e) {
      console.error(e);
    }
  };

  return (
    <div>
      <input
        placeholder="Email..."
        onChange={(e) => setEmail(e.target.value)}
      />
      <input
        placeholder="Password..."
        type="password"
        onChange={(e) => setPassword(e.target.value)}
      />
      <button onClick={signIn}> Sign In </button>
      <button onClick={logOut}> Log Out </button>
      <button onClick={signUp}> Sign Up </button>
    </div>
  );
};