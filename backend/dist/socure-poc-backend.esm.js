import express from 'express';
import cors from 'cors';

var PORT = process.env.PORT ? /*#__PURE__*/parseInt(process.env.PORT, 10) : 80;
var app = /*#__PURE__*/express();
app.use(cors());
app.use(express.json());
app.post('/result', function (request, response) {
  // TODO: Store response body
  // TODO: Fire up evervault cage to download, and encrypt images
  // TODO: Issue pass
  console.log(request.body); // TODO: Do we need this ?

  response.setHeader('Access-Control-Allow-Origin', '*');
  response.setHeader('Access-Control-Allow-Methods', '*');
  response.setHeader('Access-Control-Allow-Headers', '*');
  return response.json({
    valid: request.body.documentVerification.decision.value === 'accept',
    data: request.body
  });
});
app.listen(PORT, function () {
  console.log("Listening on port " + PORT);
});
//# sourceMappingURL=socure-poc-backend.esm.js.map
