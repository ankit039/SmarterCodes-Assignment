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
```txt
query MyQuery {
  queryUser {
    cars {
      id
      name
      year
    }
    id
    name
  }
}


```

#### Step 5: According to assignment details fetch some data using following query
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

