import moment from 'moment';

const REQUIRED_AGE = 80;

export const REASON_CODES = {
    "R822": "First name extracted from document does not match input first name",
    "R823": "Last name extracted from document does not match input last name",
    "R824": "Address extracted from document does not match input address",
    "R825": "DOB extracted from document does not match input DOB",
    "R826": "Document Number extracted from document does not match input number"
}

export enum EventType {
    VERIFICATION_COMPLETED = "VERIFICATION_COMPLETED"
}

export type Request = {
    id: string,
    environmentName: string,
    event: {
        referenceId: string,
        customerUserId: string,
        eventType: EventType,
        message: string,
        data: {
            referenceId: string,
            documentVerification: {
                reasonCodes: Array<string>,
                documentType: {
                    type: string,
                    country: string,
                    state: string
                },
                decision: {
                    name: string,
                    value: string
                },
                documentData: {
                    firstName: string,
                    surName: string,
                    fullName: string,
                    address: string,
                    documentNumber: string,
                    dob: string,
                    expirationDate: string,
                    issueDate: string
                }
            }
        }
    }
}

export default class Validator {
    public valid(request: Request) {
        const birthdate = moment(request.event.data.documentVerification.documentData.dob).startOf('day');
        const minimum = moment().subtract(REQUIRED_AGE).startOf('day');

        return birthdate.isBefore(minimum)

        // send data to our backend (state yes/no - reason)
        // issue pass
    }
}