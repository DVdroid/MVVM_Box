//
//  UserViewModel.swift
//  MVVM+Coordinator
//
//  Created by VA on 26/02/22.
//

import Foundation
import Combine

enum UserError: Error {
    case unknownError
}

enum State {
    case loading
    case finished(Result<[String], Error>)
}

class UserViewModel {
    
    var requestState: Box<State> = Box(.loading)
    private var users: [User] = []
    
    func fetchUserData() {
        print("fetchData called...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
            
            guard let self = self else { return }
            let number = Int.random(in: 0...5)
            if number % 2 == 0 {
                print("Success response returned...")
                self.users = User.mock()
                self.requestState.value = .finished(.success(self.users.map { $0.name }) )
            } else {
                print("Failure response returned...")
                self.requestState.value = .finished(.failure(UserError.unknownError))
            }
        }
    }
}
