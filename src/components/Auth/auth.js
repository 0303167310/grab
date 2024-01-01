import { useState } from "react";
import LogInButton from "./login";
import SignUpButton from "./signup";
//import { useNavigate } from 'react-router-dom';

export default function Auth(){
  //const navigate = useNavigate();

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");


  return (
    <>
    <div>
      Authentication
    </div>
    <form>
      <div>
        <label>
          Email
        </label>
          <input
            placeholder="Email..."
            onChange={(e) => setEmail(e.target.value)}
          />
      </div>
      <div>
        <label>
          Password
        </label>
        <input
          placeholder="Password..."
          type="password"
          onChange={(e) => setPassword(e.target.value)}
        />
      </div>
    </form>
    
    
    <LogInButton email={email} password={password} />
    <SignUpButton email={email} password={password} />
    </>

    
  );
};