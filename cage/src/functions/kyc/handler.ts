import type { ValidatedEventAPIGatewayProxyEvent } from '@libs/api-gateway';
import { formatJSONResponse } from '@libs/api-gateway';
import { middyfy } from '@libs/lambda';

import schema from './schema';
import Validator, {Request} from "@libs/socure";

const kyc: ValidatedEventAPIGatewayProxyEvent<typeof schema> = async (event) => {
  return formatJSONResponse({
    valid: new Validator().valid({
      event: {
        data: {
          documentVerification: event.body.documentVerification
        }
      }
    } as Request),
    event,
  });
};

export const main = middyfy(kyc);
