## Smarter.codes Ankit Raj Assignment 1

#### Step 1: Login into Dgrap and create a new free database 
l## Smarter.codes Ankit Raj Assignment 1

#### Step 1: Login into Dgrap
* Create a new free database: By hitting lauch a new backend
* Name the database: CarDB
* Follow further steps given below


#### Step 2: According to assignment details create schema using below code
```js
type User {
      id: Int!
      name: String!
      age: Int!
      cars: [Car]
}

type Car {
      id: Int!
      name: String!
      year: Int!
      company: CarCompany!
}

type CarCompany {
      id: Int!
      name: String!
}
```

#### Step 3: According to assignment details add some data using following mutation
```js
mutation {
  addCarCompany(input: {id: 1, name: "BMW"}) {
    carCompany {
      id
      name
    }
  }
  addCar(input: {id: 1, name: "SUV X5", year: 2018, company: {id: 1, name: "BMW"}}) {
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
  addUser(input: {id: 1, name: "John", age: 30, cars: {id: 1, name: "SUV X5", year: 2018}}) {
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

#### Step 4: According to assignment details fetch some data using following query
```txt
query MyQuery {
  queryUser {
    id
    name
    cars{
      id
      name
    }
  }
}
```




#### Step 2: According to assignment details create schema using below code
```js
type User {
      id: Int!
      name: String!
      age: Int!
      cars: [Car]
}

type Car {
      id: Int!
      name: String!
      year: Int!
      company: CarCompany!
}

type CarCompany {
      id: Int!
      name: String!
}
```

#### Step 3: According to assignment details add some data using following mutation
```js
mutation {
  addCarCompany(input: {id: 1, name: "BMW"}) {
    carCompany {
      id
      name
    }
  }
  addCar(input: {id: 1, name: "SUV X5", year: 2018, company: {id: 1, name: "BMW"}}) {
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
  addUser(input: {id: 1, name: "John", age: 30, cars: {id: 1, name: "SUV X5", year: 2018}}) {
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

#### Step 4: According to assignment details fetch some data using following query
```txt
query MyQuery {
  queryUser {
    id
    name
    cars{
      id
      name
    }
  }
}
```


