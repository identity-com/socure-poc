import logo from './logo.svg';
import './App.css';

// import SolanaPayModal from "/Users/william/Work/socure-martin/solana-pay-ext-ui/src/components/SolanaPay/SolanaPayModal";
// import {PaymentInfo, PaymentType, PaymentSession} from "/Users/william/Work/socure-martin/solana-pay-ext-ui/src/components/SolanaPay/types";
import * as A from 'solana-pay-ext-ui';

function App() {
  console.log(A);

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
