import React from 'react';
import logo from './logo.svg';
import './App.css';
import {Link} from "react-router-dom";

function App() {
    return (
        <div className="App">
            <nav
                style={{
                    borderBottom: "solid 1px",
                    paddingBottom: "1rem",
                }}
            >
                <Link to="/iframe" >iframe</Link>
            </nav>

        </div>
    );
}

export default App;
