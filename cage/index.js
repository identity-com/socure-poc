const crypto = require("crypto");
const axios = require("axios");

const ALGORITHM = "aes-256-cbc";

exports.handler = async (input) => {
    const imageUrl = `https://upload.socure.com/api/3.0/documents/${input.documentUuid}`;
    let image = await axios.get(imageUrl, {
        responseType: 'arraybuffer',
        headers: {
            Authorization: `SocureApiKey ${process.env.SOCURE_API_KEY}`
        }
    });

    const iv = crypto.randomBytes(16);

    const key = crypto.randomBytes(32);

    const cipher = crypto.createCipheriv(ALGORITHM, key, iv);

    const data = Buffer.concat([cipher.update(image.data), cipher.final()]);

    return {
        iv: await evervault.encrypt(iv.toString("hex")),
        key: await evervault.encrypt(key.toString("hex")),
        data
    };
};
