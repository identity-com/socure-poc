import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import {BrowserRouter, Route, Routes} from "react-router-dom";
import Index from './iframe/Index';
import Socure from './iframe/Socure';
import Wallet from './iframe/Wallet';
import Pay from './iframe/Pay';

const root = ReactDOM.createRoot(
    document.getElementById('root') as HTMLElement
);

root.render(
    <React.StrictMode>
        {/*<BrowserRouter>*/}
        {/*    <div className="App w-screen h-screen">*/}
        {/*        <Routes>*/}
        {/*            <Route path="/" element={<App/>}/>*/}
        {/*            <Route path="index" element={<Index/>}/>*/}
        {/*            <Route path="wallet" element={<Wallet/>}/>*/}
        {/*            <Route path="socure" element={<Socure/>}/>*/}
        {/*            <Route path="pay" element={<Pay/>}/>*/}
        {/*        </Routes>*/}
        {/*    </div>*/}
        {/*</BrowserRouter>*/}
        <App/>
    </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals(console.log);
