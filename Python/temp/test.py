from urllib2 import Request, urlopen
from urllib import urlencode, quote_plus

url = 'http://openapi.elevator.go.kr/openapi/service/DefectElvtrInqireService/getDefectElvtrInqire'
queryParams = '?' + urlencode({quote_plus('ServiceKey'): 'Fhe2mEkTnWTzYP9NsyUhjwpCPgiDe54KBCVdYH%2FvefDCiRywe17anP9319GX6iU%2BfkYawmOGd1zP4DoMZJNs8w%3D%3D',
                              quote_plus('elevator_no'): '5800598', quote_plus('flag'): '2', quote_plus('area'): '충청북도 청주시 서원구 청남로 1853', quote_plus('buld_nm'): 'E-mart청주점'})

request = Request(url + queryParams)
request.get_method = lambda: 'GET'
response_body = urlopen(request).read()
print(response_body)
