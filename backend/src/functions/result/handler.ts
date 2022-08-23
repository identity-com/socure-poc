import type {ValidatedEventAPIGatewayProxyEvent} from '@libs/api-gateway';
import {formatJSONResponse} from '@libs/api-gateway';
import {middyfy} from '@libs/lambda';
import schema from './schema';
const result: ValidatedEventAPIGatewayProxyEvent<typeof schema> = async (event) => {
    // TODO: Store response body
    // TODO: Fire up evervault cage to download, and encrypt images
    // TODO: Issue pass

    return formatJSONResponse({
        // @ts-ignore
        valid: event.body.documentVerification.decision.value === 'accept',
        data: event.body,
    });
};

export const main = middyfy(result);