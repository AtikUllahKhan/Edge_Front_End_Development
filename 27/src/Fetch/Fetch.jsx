import { useState, useEffect } from 'react';


const Fetch=()=> {

  const [data, setData] = useState([]); 
  const [error, setError] = useState(null); 

  // Fetch data from the URL
  useEffect(() => {
    fetch('https://jsonplaceholder.typicode.com/posts') 
      .then((response) => {
        if (!response.ok) {
          throw new Error('Failed to fetch data'); 
        }
        return response.json();
      })
      .then((json) => setData(json)) 
      .catch((err) => setError(err.message)); 
  }, []); 
  return (
    <> 
      <section>
        <h2>Fetched Data</h2>
        {error ? (
          <p className="error">Error: {error}</p>
        ) : data.length > 0 ? (
          <ul>
            {data.slice(0, 12).map((item) => ( 
              <li key={item.id}>
                <h2>UserID: {item.userId}</h2>
                <h3>ID: {item.id}</h3>
                <h4>Title: {item.title}</h4>
                <p>Body: {item.body}</p>
              </li>
            ))}
          </ul>
        ) : (
          <p>Loading data...</p>
        )}
      </section>
    </>
  );
};

export default Fetch;
