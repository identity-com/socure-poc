import {useEffect, useState} from "react";
import axios from "axios";
import {Navigate} from 'react-router-dom';

declare const SocureInitializer: any;
const API_KEY = 'adcd2fe2-b49c-4d20-ba72-4fa582c2c53d';

export default function Socure() {
    let [confirmed, setConfirmed] = useState(false);

    const start = async () => {
        var config = {
            onProgress: async () => {
            },
            onSuccess: async (response: any) => {
                // TODO: Remove once Socure is working
                const out = await axios.post('https://06ad3a7bdf01-eu-ngrok-io.relay.evervault.com/dev/result', response.verifyResult);

                if (!out.data.valid) {
                    alert("Failed verification");
                    return;
                }

                window.parent.postMessage({
                    target: "tokenUpdate"
                },"*" );

                setConfirmed(true);
            },
            onError: async (response: any) => {
            },

            qrCodeNeeded: true
        }

        SocureInitializer.init(API_KEY)
            .then((lib: { init: (arg0: string, arg1: string, arg2: { onProgress: (progress: any) => void; onSuccess: (success: any) => void; onError: (error: any) => void; qrCodeNeeded: boolean; }) => Promise<any>; start: (arg0: number) => Promise<any>; }) => {
                lib.init(API_KEY, "#socure", config).then(function () {
                    lib.start(2).then(function (response: any) {
                            console.log('response: START');
                            console.log(response);
                            console.log('response: END')
                        },
                        function (error: any) {
                            console.log('error: START');
                            console.log(error);
                            console.log('error: END')
                        }
                    );
                });
            });
    }
    window.postMessage({
        target: 'verification',
        success: true
    });

    let initialized = false;
    useEffect(() => {
        if (initialized) return;

        // eslint-disable-next-line
        initialized = true;

        start();
    }, []);

    return (
        confirmed ? <Navigate to="/pay"/> :
            <main style={{padding: "1rem 0"}} id="socure">
                Initializing Document Verification Process
            </main>
    );
};