var request = require('request');

var url = 'http://openapi.elevator.go.kr/openapi/service/DefectElvtrInqireService/getDefectElvtrInqire';
var queryParams = '?' + encodeURIComponent('ServiceKey') + '=Fhe2mEkTnWTzYP9NsyUhjwpCPgiDe54KBCVdYH%2FvefDCiRywe17anP9319GX6iU%2BfkYawmOGd1zP4DoMZJNs8w%3D%3D'; /* Service Key*/
queryParams += '&' + encodeURIComponent('elevator_no') + '=' + encodeURIComponent('5800598'); /* */
queryParams += '&' + encodeURIComponent('flag') + '=' + encodeURIComponent('2'); /* */
queryParams += '&' + encodeURIComponent('area') + '=' + encodeURIComponent('충청북도 청주시 서원구 청남로 1853'); /* */
queryParams += '&' + encodeURIComponent('buld_nm') + '=' + encodeURIComponent('E-mart청주점'); /* */

request({
    url: url + queryParams,
    method: 'GET'
}, function (error, response, body) {
    //console.log('Status', response.statusCode);
    //console.log('Headers', JSON.stringify(response.headers));
    console.log('Reponse received', body);
});