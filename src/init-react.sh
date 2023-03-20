// place inside /src
rm assets
rm components
rm layouts
rm middleware
rm pages
rm routes
rm services
rm constants


mkdir assets
cd assets
mkdir styles
cd styles
touch variables.scss
touch index.scss

echo "
@import \"./variables.scss\";

html {
  scroll-behavior: smooth;
}

body {
  margin: 0;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
    'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
    sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  background-color: $background-light;
}

code {
  font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New',
    monospace;
}

" > index.scss
cd ..

mkdir images
cd ..
mkdir components
cd components
mkdir pages
cd ..

mkdir config
mkdir constants
mkdir layouts
mkdir middleware
mkdir pages
mkdir routes
mkdir services


cd layouts
rm Default.jsx
touch Default.jsx

echo "
import {Outlet} from \"react-router-dom\";

const Default = () => {
  return (
    <>
      <Outlet />
    </>
  );
};

export default Default;
" > Default.jsx

cd ../pages
touch HomePage.jsx
echo "
import Home from \"../components/pages/Home\"

const HomePage = () => {
  return (
    <Home />
  )
}

export default HomePage
" > HomePage.jsx


cd ../components/pages

rm Home.jsx
touch Home.jsx

echo "
const Home = () => {
    return (
        <h1>this is the Homepage</h1>
    );
}

export default Home;
" > Home.jsx

cd ../../

rm App.css
rm setupTests.js
rm reportWebVitals.js
rm logo.svg
rm App.test.js

rm App.js
touch App.jsx

echo "
import { BrowserRouter, Routes, Route } from \"react-router-dom\";
import HomePage from \"./pages/HomePage\"
import Default from \"./layouts/Default\"

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path=\"/\" element={<Default />}>
          <Route index element={<HomePage />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;" > App.jsx

rm index.js
touch index.jsx

echo "
import React from 'react';
import ReactDOM from 'react-dom/client';
import './assets/styles/index.scss';
import App from './App';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);" > index.jsx


