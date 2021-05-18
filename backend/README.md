# Backend

백엔드를 위한 디렉토리

1. 도시조회 
-   url : [GET] /cites
```
Response Body

city : 
{ 
    {id: 1,
     cityName: "서울"
     },
     {id: 2,
     cityName: "경기"
     },
     {id: 3,
     cityName: "대구"
     },
     {id: 4,
     cityName: "대전"
     },
     {id: 5,
     cityName: "울산"
     },
     {id: 6,
     cityName: "부산"
     },
     {id: 7,
     cityName: "광주"
     },
     {id: 8,
     cityName: "제주"
     }
	
}
```

2. 도시별 요금 조회
- [GET] /cites/{cityId}/prices
```
Response Body

{
    "lowest": 30000,
    "highest": 500000,
    "average": 250000,
    "prices": [
        30000,
        50000,
        70000,
        100000,
        200000,
        500000
    ],
}
```

3. 방 예약 
- [POST] /reservation
```
Request Body

{
    "checkInDate": "2021-05-15",
    "checkOutDate": "2021-05-20",
    "room_id": 1,
    "adult": 1,
    "children": 0,
    "baby" : 0
}
```


4. 예약 조회
- [GET] /reservation
```
Response Body

"reservation": {
  {
    "id": 1,
    "checkInDate": "2020-06-01",
    "checkOutDate": "2020-06-03",
    "room_id": 1,
    "adult": 1,
    "children": 0,
    "baby" : 0 
  },
  {
  "id": 2,
  "checkInDate": "2020-06-01",
  "checkOutDate": "2020-06-03",
  "room_id": 2,
  "adult": 2,
  "children": 0,
  "baby" : 0 
  }
}
```

5. 도시 별 방 조회
- [GET] /rooms
```
Request Body

{
    "checkInDate": "2021-05-15",
    "checkOutDate": "2021-05-20",
    "minPrice": 40000,
    "maxPrice": 100000,
    "adult": 2,
    "children": 0,
    "baby" : 0 
    "cityId" : 1
}
```

```
Response Body

"reservation": {
  {
    "id": 1,
    "checkInDate": "2020-06-01",
    "checkOutDate": "2020-06-03",
    "room_id": 1,
    "adult": 1,
    "children": 0,
    "baby" : 0 
  },
  {
  "id": 2,
  "checkInDate": "2020-06-01",
  "checkOutDate": "2020-06-03",
  "room_id": 2,
  "adult": 2,
  "children": 0,
  "baby" : 0 
  }
}
```

6. 방 상세 조회
- [GET] /rooms/{roomId}/detail
```
Response Body

```
