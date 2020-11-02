const functions = require('firebase-functions');
const axios = require('axios');

const regionName = 'europe-west3';
const runtimeOpts = {
  timeoutSeconds: 300,
  memory: '256MB'
}

const kjoretoyOppslag =
  "https://www.vegvesen.no/ws/no/vegvesen/kjoretoy/kjoretoyoppslag/v1/kjennemerkeoppslag/kjoretoy/";
/// reqData MUST contain 'bilskilt'
exports.hentOpplysninger = functions
  .runWith(runtimeOpts)
  .region(regionName)
  .https.onCall(async (reqData, context) => {

    const bilskilt = reqData['bilskilt'];

    const apiResponse = await axios.get(kjoretoyOppslag + bilskilt);

    console.log(`statusCode: ${apiResponse.status}`)
    console.log(apiResponse.data);

    return apiResponse.data;
  });
