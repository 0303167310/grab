// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAuth } from "firebase/auth";

// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyCP_3-ki0ApMEMoxeTnJ3yv-2cpFC7aVtk",
  authDomain: "grab-intro2sw-96bbf.firebaseapp.com",
  projectId: "grab-intro2sw-96bbf",
  storageBucket: "grab-intro2sw-96bbf.appspot.com",
  messagingSenderId: "982285894910",
  appId: "1:982285894910:web:b2b457008387beab1351af"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
export const auth = getAuth(app);