import './App.css';
import {BrowserRouter, Route, Routes} from "react-router-dom";

import React from 'react';
import TestIndex from "./test/Index";
import Socure from "./iframe/Socure";

function App() {
    return (
        <div className="App w-screen h-screen">
            <nav>
                <HashRouter>
                    <div className="App w-screen h-screen">
                        <Routes>
                            <Route path="verify" element={<Socure/>}/>
                            <Route path="test" element={<TestIndex/>}/>
                        </Routes>
                    </div>
                </HashRouter>
            </nav>
        </div>
    );
}

export default App;
