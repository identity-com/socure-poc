import './App.css';
import {BrowserRouter, Link, Route, Routes} from "react-router-dom";

import React from 'react';
import TestIndex from "./test/Index";
import Socure from "./iframe/Socure";

function App() {
    return (
        <div className="App w-screen h-screen">
            <nav>
                <BrowserRouter>
                    <div className="App w-screen h-screen">
                        <Routes>
                            <Route path="verify" element={<Socure/>}/>
                            <Route path="test" element={<TestIndex/>}/>
                        </Routes>
                    </div>
                </BrowserRouter>
            </nav>
        </div>
    );
}

export default App;