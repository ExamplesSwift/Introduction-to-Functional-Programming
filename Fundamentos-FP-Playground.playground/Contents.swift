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
  
  // We need inside this class, the names of users be active and order by ID
  
  func storeActiveUserName() -> [String] {
    // we filter active user using filter
    let activeUsers = users.filter { (user) -> Bool in
      return user.active
    }
    
    // We order this using sorted
    let orderUsers = activeUsers.sorted { (user1, user2) -> Bool in
      return user1.id < user2.id
    }
    
    // Now get only name, for this we use map
    let activeUserNames = orderUsers.map { user -> String in
      return user.name
    }
    return activeUserNames
  }    
}

let dataBase = UserDatabase()
print(dataBase.storeActiveUserName())







