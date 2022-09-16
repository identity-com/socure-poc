import {useEffect, useState} from "react";
import {Navigate, useParams} from 'react-router-dom';
import axios from "axios";

declare const SocureInitializer: any;
const API_KEY = 'adcd2fe2-b49c-4d20-ba72-4fa582c2c53d';

export default function Socure() {
    let { token } = useParams();

    let [confirmed] = useState(false);

    const start = async () => {
        var config = {
            onProgress: async (response: any) => {
                // axios.post('https://socure-demo-api-identity-com.relay.evervault.com/result', response);
                console.log("=== onProgress: Start");
                console.log(response);
                console.log("=== onProgress: Start");
            },
            onSuccess: async (response: any) => {
                response.token = token;

                // await axios.post('https://localhost:3030/result', response);
                console.log("=== onSuccess: Start");
                console.log(response);
                console.log("=== onSuccess: End");

                window.parent.postMessage({
                    target: "tokenUpdate"
                },"*" );
            },
            onError: async (response: any) => {
                console.log("error");
                console.log(response);
            },

            qrCodeNeeded: true
        }

        SocureInitializer.init(API_KEY)
            .then((lib: { init: (arg0: string, arg1: string, arg2: { onProgress: (progress: any) => void; onSuccess: (success: any) => void; onError: (error: any) => void; qrCodeNeeded: boolean; }) => Promise<any>; start: (arg0: number, p?: { customerUserId: string | undefined }) => Promise<any>; }) => {
                console.log("API KEY INIT");
                lib.init(API_KEY, "#socure", config).then(function () {
                    console.log("``lib init`")
                    lib.start(2, {customerUserId: token}).then(function (response: any) {
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
