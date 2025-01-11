import './Home.css';

function Home({ onLogout }) {
  return (
    <div className="home">
      <h2>Welcome to the Home Page!</h2>
      <button onClick={() => onLogout(false)}>Logout</button>
    </div>
  );
}

export default Home;