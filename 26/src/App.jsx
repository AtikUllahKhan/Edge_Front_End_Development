import { useState } from 'react';
import reactLogo from './assets/react.svg';
import viteLogo from '/vite.svg';
import './App.css';

function App() {
  const [count, setCount] = useState(0);

  return (
    <>
      {/* Navbar */}
      <nav className="navbar">
        <a href="#" className="navbar-brand">QuadraCart</a>
        <ul className="navbar-links">
          <li><a href="#home">Home</a></li>
          <li>
            <div className="dropdown">
              <button className="dropdown-button">Menu</button>
              <div className="dropdown-content">
                <a href="#about">About</a>
                <a href="#services">Services</a>
                <a href="#contact">Contact</a>
              </div>
            </div>
          </li>
          <li><a href="#help">Help</a></li>
        </ul>
      </nav>

     
      {/* Footer */}
      <footer className="footer">
        <p>© 2025 QuadraCart. All rights reserved.</p>
        <a href="#privacy">Privacy Policy</a> | <a href="#terms">Terms of Use</a>
      </footer>
    </>
  );
}

export default App;
