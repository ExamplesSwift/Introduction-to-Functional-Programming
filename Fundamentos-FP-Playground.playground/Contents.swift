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
    var activeUsers : [User] = []
    for user in users {
      if user.active == true {
        activeUsers.append(user)
      }
    }
    activeUsers.sort { (user1, user2) -> Bool in
      user1.id < user2.id
    }
    
    var activeUserNames = [String]()
    activeUserNames.removeAll()
    
    for user in activeUsers {
      activeUserNames.append(user.name)
    }
    return activeUserNames
  }
    
}

let dataBase = UserDatabase()
print(dataBase.storeActiveUserName())







