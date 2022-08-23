import type {ValidatedEventAPIGatewayProxyEvent} from '@libs/api-gateway';
import {middyfy} from '@libs/lambda';
import schema from './schema';

const encrypt: ValidatedEventAPIGatewayProxyEvent<typeof schema> = async (event) => {
    // TODO: Get reference from input
    // Fetch image from socure
    // Generate KEY
    // Encrypt image with generated Key
    // Encrypt key with evervault
    // Return encrypted image and encrypted key
};

export const main = middyfy(encrypt);