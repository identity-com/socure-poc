const crypto = require("crypto");
const axios = require("axios");

const ALGORITHM = "aes-256-cbc";

exports.handler = async (input) => {
    let image = await axios.get(input.image, {responseType: 'arraybuffer'});

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
