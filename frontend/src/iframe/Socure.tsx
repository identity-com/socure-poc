import {useEffect, useState} from "react";
import axios from "axios";
import {Navigate} from 'react-router-dom';

declare const SocureInitializer: any;

const key = 'c9ed4fdc-4959-4d1b-add4-ebe508003a6b';

function onProgress(progress: any) {
    // console.log(progress);
}

function onSuccess(response: any) {
    console.log(response);
}

function onError(error: any) {
    // console.log(error);
}


const X = {
    "eventId": "bb91667d-7057-4c27-baff-0a71b22780dc",
    "status": "VERIFICATION_COMPLETE",
    "verificationLevel": 2,
    "key": "adcd2fe2-b49c-4d20-ba72-4fa582c2c53d",
    "referenceId": "b9521964-ace5-4d92-8216-3b930048902f",
    "verifyResult": {
        "referenceId": "57ebb1fd-041a-4fa9-93ca-2d7c66ed68db",
        "documentVerification": {
            "reasonCodes": [
                "I831",
                "I836"
            ],
            "documentType": {
                "type": "Drivers License",
                "country": "US",
                "state": "NY"
            },
            "decision": {
                "name": "moderate",
                "value": "accept"
            },
            "documentData": {
                "firstName": "Jane",
                "surName": "Doe",
                "fullName": "Jane Doe",
                "address": "330, NY 10001",
                "documentNumber": "11223344",
                "dob": "1980-01-01",
                "expirationDate": "2020-01-01",
                "issueDate": "2015-01-01"
            }
        }
    },
    "documentUuid": "3cc73cd9-3c6c-4a4e-acd1-39ecb94acac3"
};

export default function Socure() {
    let [confirmed, setConfirmed] = useState(false);

    const start = async () => {
        var config = {
            onProgress: onProgress, //callback method for reading the progress status
            onSuccess: async (response: any) => {
                console.log('response: START');
                console.log(response);
                console.log('response: END');


                const out = await axios.post('http://localhost:3000/dev/kyc', response.verifyResult);
                console.log(out);

                if (!out.data.valid) {
                    alert("Failed verification");
                    return;
                }

                setConfirmed(true);
            },
            onError: onError, //callback method to read the error response
            qrCodeNeeded: true
        }

        SocureInitializer.init("adcd2fe2-b49c-4d20-ba72-4fa582c2c53d")
            .then((lib: { init: (arg0: string, arg1: string, arg2: { onProgress: (progress: any) => void; onSuccess: (success: any) => void; onError: (error: any) => void; qrCodeNeeded: boolean; }) => Promise<any>; start: (arg0: number) => Promise<any>; }) => {
                lib.init("adcd2fe2-b49c-4d20-ba72-4fa582c2c53d", "#socure", config).then(function () {
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

    let initialized = false;
    useEffect(() => {
        if (initialized) return;
        initialized = true;

        start();
    }, []);

    return (
        confirmed ? <Navigate to="/pay"/> :
            <main style={{padding: "1rem 0"}} id="socure">
                Initializing Document Verification Proces
            </main>
    );
};