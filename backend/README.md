# Backend

백엔드를 위한 디렉토리

1. 도시조회 
-   url : [GET] /cites
```json
{
  "mainImage": "https://a0.muscache.com/im/pictures/ddc7f01f-3fb3-483c-87e6-701dad52c930.jpg?im_w=960",
  "cities": [
    {
      "id": 1,
      "cityName": "서울",
      "cityImage": "https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240"
    },
    {
      "id": 2,
      "cityName": "경기",
      "cityImage": "https://a0.muscache.com/im/pictures/558a403a-aeed-4829-83a6-c9b0ccf21866.jpg?im_q=medq&im_w=240"
    },
    {
      "id": 3,
      "cityName": "인천",
      "cityImage": "https://a0.muscache.com/im/pictures/31e445ed-8b69-477b-aefd-d04dae6d0bb1.jpg?im_q=medq&im_w=240"
    },
    {
      "id": 4,
      "cityName": "대구",
      "cityImage": "https://a0.muscache.com/im/pictures/f7736f4a-f8b9-4527-b46c-d0d8df856984.jpg?im_q=medq&im_w=240"
    },
    {
      "id": 5,
      "cityName": "울산",
      "cityImage": "https://a0.muscache.com/im/pictures/926d56aa-8b36-4138-8eae-ad991868b858.jpg?im_q=medq&im_w=240"
    },
    {
      "id": 6,
      "cityName": "광주",
      "cityImage": "https://a0.muscache.com/im/pictures/087a8dff-a609-4084-86db-f45051c6f23a.jpg?im_q=medq&im_w=240"
    },
    {
      "id": 7,
      "cityName": "부산",
      "cityImage": "https://a0.muscache.com/im/pictures/f7736f4a-f8b9-4527-b46c-d0d8df856984.jpg?im_q=medq&im_w=240"
    },
    {
      "id": 8,
      "cityName": "제주",
      "cityImage": "https://a0.muscache.com/im/pictures/85bd76fe-3c73-4e79-b581-36b9676892f7.jpg?im_q=medq&im_w=240"
    }
  ],
  "extraImages": [
    "https://a0.muscache.com/im/pictures/2f13349d-879d-43c6-83e3-8e5679291d53.jpg?im_w=480",
    "https://a0.muscache.com/im/pictures/36f53e61-db8d-403c-9122-5b761c0e4264.jpg?im_w=480",
    "https://a0.muscache.com/im/pictures/7d82ca14-56e5-4465-8218-dcfa7d69b6ac.jpg?im_w=480",
    "https://a0.muscache.com/im/pictures/10a638e1-6aff-4313-8033-1275cec83987.jpg?im_w=480"
  ]
}
```

2. 도시별 요금 조회
- [GET] /cites/{cityId}/prices
```json
{
  "averagePrice": 65000,
  "allPrices": [
    60000,
    70000
  ]
}
```

3. 방 예약 
- [POST] /reservations
  http://localhost:8080/reservation/2?checkIn=2021-05-20&checkOut=2021-05-25&numOfPeople=1


4. 예약 조회
- [GET] /reservation
```json
{
  "reservationId": 1,
  "roomId": 1,
  "checkIn": "2021-05-20",
  "checkOut": "2021-05-25",
  "totalPrice": 577000,
  "numberOfGuest": 1
}
```
