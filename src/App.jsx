import React, { useEffect } from 'react';

function App() {
  useEffect(() => {
    window.location.href = '/patients.html'; // Redirect to the main HTML file
  }, []);

  return null; // No need to render anything since it's redirecting
}

export default App;
