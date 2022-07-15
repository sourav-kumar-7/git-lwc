import { LightningElement ,api,wire} from 'lwc';
import { CloseActionScreenEvent} from 'lightning/actions'; 
import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class RecordType extends LightningElement {

    @api recordId;

    closeAction(){
        this.dispatchEvent(new CloseActionScreenEvent());
    }

}