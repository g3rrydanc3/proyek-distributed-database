'use strict';

//#region CSS IMPORT
import 'bootstrap/dist/css/bootstrap.min.css';
//#endregion

import 'script-loader!jquery';
import 'script-loader!bootstrap';

import 'script-loader!datatables.net';
import 'script-loader!datatables.net-bs4';

import AutoNumeric from 'autonumeric';
window.AutoNumeric = AutoNumeric;

$.extend(true, $.fn.dataTable.defaults, {
    "autoWidth": false,
    "destroy": true,
});

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