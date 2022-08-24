"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const cors_1 = __importDefault(require("cors"));
const PORT = process.env.PORT ? parseInt(process.env.PORT, 10) : 80;
const app = (0, express_1.default)();
app.use((0, cors_1.default)());
app.use(express_1.default.json());
app.post('/result', (request, response) => {
    // TODO: Store response body
    // TODO: Fire up evervault cage to download, and encrypt images
    // TODO: Issue pass
    console.log(request.body);
    // TODO: Do we need this ?
    response.setHeader('Access-Control-Allow-Origin', '*');
    response.setHeader('Access-Control-Allow-Methods', '*');
    response.setHeader('Access-Control-Allow-Headers', '*');
    return response.json({
        valid: request.body.documentVerification.decision.value === 'accept',
        data: request.body,
    });
});
app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`);
});
