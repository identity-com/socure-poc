import express, {Request, Response} from "express";
import cors from "cors";

const PORT: number = process.env.PORT ? parseInt(process.env.PORT as string, 10) : 80;

const app = express();

app.use(cors());
app.use(express.json());

app.get('/', (request: Request, response: Response) => {
    response.send('Identity.com');
});

app.post('/result', (request: Request, response: Response) => {
    console.log(JSON.stringify(request.body, null, 2));

    if(request.body.event.eventType !== 'VERIFICATION_COMPLETED') {
        return;
    }

    // TODO: Store response body
    // TODO: Fire up evervault cage to download, and encrypt images
    // TODO: Issue pass



    // TODO: Do we need this ?
    response.setHeader('Access-Control-Allow-Origin', '*');
    response.setHeader('Access-Control-Allow-Methods', '*');
    response.setHeader('Access-Control-Allow-Headers', '*');

    return response.json({
        valid: true,
        data: request.body,
    });
});

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`);
});
