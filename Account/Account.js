import { LightningElement, wire, api} from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
import NAME_FIELD from '@salesforce/schema/Account.Name';


export default class FetchDataFromApex extends LightningElement {
    @api recordId;

    @wire(getRecord, {recordId: '$recordId', fields: [NAME_FIELD]})
    record;

    get myName() {
        return getFieldValue(this.record.data, NAME_FIELD);
    }

}