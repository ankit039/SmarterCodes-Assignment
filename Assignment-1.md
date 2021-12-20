## Smarter.codes Ankit Raj Assignment 1


#### Step 1: Login into Dgrap
* Create a new free database: By hitting lauch a new backend
* Name the database: CarDB
* Follow further steps given below


#### Step 2: According to assignment details create schema using below code
```js
type User {
      id: Int!
      name: String! @search(by: [fulltext])
      age: Int!
      cars: [Car]
}

type Car {
      id: Int!
      name: String! @search(by: [fulltext])
      year: Int!
      company: CarCompany!
}

type CarCompany {
      id: Int!
      name: String! @search(by: [fulltext])
}
```

#### Step 3: According to assignment details add some data using following mutation
```js
mutation {
  addCarCompany(input: [
    {id: 1, name: "BMW"}
    {id: 2, name: "Honda"}
    {id: 3, name: "Tata"}
  ]) {
    carCompany {
      id
      name
    }
  }
  addCar(input: [
    {id: 1, name: "SUV X5", year: 2018, company: {id: 1, name: "BMW"}}
    {id: 2, name: "WRV", year: 2020, company: {id: 2, name: "Honda"}}
    {id: 3, name: "Amaze", year: 2017, company: {id: 2, name: "Honda"}}
    {id: 4, name: "Nexon", year: 2021, company: {id: 3, name: "Tata"}}
  ]) {
    car {
      id
      name
      year
      company {
        id
        name
      }
    }
  }
  addUser(input: [
    {id: 1, name: "Ankit", age: 21, cars: [
      {id: 1, name: "X5", year: 2018}
      {id: 2, name: "WRV", year: 2020}
    ]}
    {id: 2, name: "Chandan", age: 20, cars: [
      {id: 3, name: "Amaze", year: 2017}
    ]}
    {id: 3, name: "Devik", age: 20, cars: [
      {id: 3, name: "Amaze", year: 2017}
      {id: 4, name: "Nexon", year: 2021}
    ]}
  ]) {
    user {
      id
      name
      age
      cars {
        id
        name
        year
      }
    }
  }
}
```

#### Step 4: According to assignment details fetch all data using following query
Query
```txt
query MyQuery {
  queryUser {
    id
    name
    cars {
      id
      name
      year
    }
  }
}
```

Result
```js
{
    "data": {
        "queryUser": [
            {
                "id": 3,
                "name": "Devik",
                "cars": [
                    {
                        "id": 3,
                        "name": "Amaze",
                        "year": 2017
                    },
                    {
                        "id": 4,
                        "name": "Nexon",
                        "year": 2021
                    }
                ]
            },
            {
                "id": 1,
                "name": "Ankit",
                "cars": [
                    {
                        "id": 1,
                        "name": "X5",
                        "year": 2018
                    },
                    {
                        "id": 2,
                        "name": "WRV",
                        "year": 2020
                    }
                ]
            },
            {
                "id": 2,
                "name": "Chandan",
                "cars": [
                    {
                        "id": 3,
                        "name": "Amaze",
                        "year": 2017
                    }
                ]
            }
        ]
    },
    "extensions": {
        "touched_uids": 32,
        "tracing": {
            "version": 1,
            "startTime": "2021-12-20T06:59:00.643916725Z",
            "endTime": "2021-12-20T06:59:00.648140927Z",
            "duration": 4224236,
            "execution": {
                "resolvers": [
                    {
                        "path": [
                            "queryUser"
                        ],
                        "parentType": "Query",
                        "fieldName": "queryUser",
                        "returnType": "[User]",
                        "startOffset": 130047,
                        "duration": 4083616,
                        "dgraph": [
                            {
                                "label": "query",
                                "startOffset": 190600,
                                "duration": 4020134
                            }
                        ]
                    }
                ]
            }
        }
    }
}
```

#### Step 5: According to assignment details fetch some data using following query
Query
```js
query MyQuery {
  queryUser(filter: {name: {alloftext: "Ankit"}}) {
    id
    name
    cars {
      id
      name
      year
    }
  }
}
```

Result
```js
{
    "data": {
        "queryUser": [
            {
                "id": 1,
                "name": "Ankit",
                "cars": [
                    {
                        "id": 1,
                        "name": "X5",
                        "year": 2018
                    },
                    {
                        "id": 2,
                        "name": "WRV",
                        "year": 2020
                    }
                ]
            }
        ]
    },
    "extensions": {
        "touched_uids": 15,
        "tracing": {
            "version": 1,
            "startTime": "2021-12-20T06:57:44.473722211Z",
            "endTime": "2021-12-20T06:57:44.475399652Z",
            "duration": 1677441,
            "execution": {
                "resolvers": [
                    {
                        "path": [
                            "queryUser"
                        ],
                        "parentType": "Query",
                        "fieldName": "queryUser",
                        "returnType": "[User]",
                        "startOffset": 135989,
                        "duration": 1537020,
                        "dgraph": [
                            {
                                "label": "query",
                                "startOffset": 199833,
                                "duration": 1471737
                            }
                        ]
                    }
                ]
            }
        }
    }
}
```

