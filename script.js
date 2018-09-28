'use strict';

import 'script-loader!jquery';
import 'script-loader!bootstrap';

import 'bootstrap/dist/css/bootstrap.min.css';

import AutoNumeric from 'autonumeric';
window.AutoNumeric = AutoNumeric;

const autoNumericOptionsRupiah = {
    digitGroupSeparator        : '.',
    decimalCharacter           : ',',
    decimalCharacterAlternative: '.',
    currencySymbol             : '\u202fRp. ',
    currencySymbolPlacement    : AutoNumeric.options.currencySymbolPlacement.prefix,
    roundingMethod             : 'U',
	 decimalPlaces              : '0',
     unformatOnSubmit           : 'true',
     caretPositionOnFocus       : 'end',
     selectOnFocus              : 'true',
};

window.defineAutoNumeric = function (){
    $('.currency').each(function(i, obj) {
        if (typeof obj.autonumeric === "undefined") {
            obj.autonumeric = new AutoNumeric(obj, autoNumericOptionsRupiah);
        }
    });
}
window.defineAutoNumeric();