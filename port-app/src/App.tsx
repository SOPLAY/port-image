import { useState } from 'react';
import reactLogo from './assets/react.svg';
import viteLogo from '/vite.svg';
import './App.css';

function App() {
  const [count, setCount] = useState(0);
  return (
    <>
      <div>
        <img src={viteLogo} className='logo' alt='Vite logo' />
        <img src={reactLogo} className='logo react' alt='React logo' />
      </div>
      <h1>Vite + React</h1>
      <h2 className='read-the-docs'>
        Image PORT = <span>{import.meta.env.VITE_PORT}</span>
      </h2>
      <div className='card'>
        <button
          onClick={() => setCount((count) => count + 1)}
          test-id='count-button-box'
        >
          count is <span>{count}</span>
        </button>
      </div>
    </>
  );
}

export default App;
