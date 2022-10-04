//
//  TestViewModel.swift
//  SwinjectTest
//
//  Created by 최호성 on 2022/08/16.
//

import Foundation

protocol TestViewModel{
    
}

class DefaultTestViewModel: TestViewModel{
    
    let testUseCase: TestUseCase
    
    init(testUseCace: TestUseCase){
        self.testUseCase = testUseCace
    }
        
}
