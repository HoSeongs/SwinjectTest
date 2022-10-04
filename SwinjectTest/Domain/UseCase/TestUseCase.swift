//
//  TestUseCase.swift
//  SwinjectTest
//
//  Created by 최호성 on 2022/10/05.
//

import Foundation

protocol UseCase{
    
}

class TestUseCase : UseCase{
    
    let testRepository: TestRepository
    
    init(testRepository: TestRepository){
        self.testRepository = testRepository
    }
    
}
