import UIKit

struct User {
  let id: Int
  let name: String
  let active: Bool
}

class UserDatabase {
  let users = [
    User(id: 1, name: "Bruce", active: false),
    User(id: 2, name: "Juan", active: true),
    User(id: 3, name: "Carlos", active: false),
    User(id: 4, name: "Jhon", active: true),
    User(id: 5, name: "Jose", active: false),
    User(id: 6, name: "Tomas", active: true),
    User(id: 7, name: "Gabriel", active: false)
  ]
  
  func storeActiveUserName() -> [String] {
    return users.filter {
      $0.active
    }.sorted {
      $0.id < $1.id
    }.map {
      $0.name
    }
  }
  
}

let dataBase = UserDatabase()
print(dataBase.storeActiveUserName())
