import {useEffect} from "react";

declare const SocureInitializer: any;

const key = 'c9ed4fdc-4959-4d1b-add4-ebe508003a6b';

var config = {
    onProgress: (progress: any) => {
        console.log('=== onProgress: START');
        console.log(progress);
        console.log('=== onProgress: END');
    },
    onSuccess: (success: any) => {
        console.log('=== onSuccess: START');
        console.log(success);
        console.log('=== onSuccess: END');
    },
    onError: (error:any) => {
        console.log('=== onError: START');
        console.log(error);
        console.log('=== onError: END');
    },
    qrCodeNeeded: true
};

export default function IFrame() {
    let initialized = false;
    useEffect(() => {
        if(initialized) return;
        initialized = true;

        console.log("initializing");
        const init = async () => {
            const lib = await SocureInitializer.init(key);

            lib.init(key, "#socure", config).then(function () {
                lib.start(2);
            });
        }

        init();
    }, []);

    return (
        <main style={{padding: "1rem 0"}} id="socure">

        </main>
    );
};