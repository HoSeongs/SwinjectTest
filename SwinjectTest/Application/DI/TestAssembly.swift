//
//  TestAssembly.swift
//  SwinjectTest
//
//  Created by 최호성 on 2022/08/16.
//

import Foundation
import Swinject

class TestAssembly: Assembly{
    
    func assemble(container: Container) {
        
        container.register(TestRepository.self) { resolver in
            let apiService = resolver.resolve(ApiService.self)!
            return TestRepositoryImpl(apiService)
        }
        
        container.register(TestUseCase.self) { resolver in
            let testRepository = resolver.resolve(TestRepository.self)!
            return TestUseCase(testRepository: testRepository)
        }
        
        container.register(TestViewModel.self) { resolver in
            let testUseCase = resolver.resolve(TestUseCase.self)!
            return DefaultTestViewModel(testUseCace: testUseCase)
        }
    }
}

class ApiServiceAssembly: Assembly{
    
    func assemble(container: Container) {
        container.register(ApiService.self) { resolver in
            return AlamofireManager()
        }.inObjectScope(.container)
    }
}



class DependencyProvider {
    
    static let shared = DependencyProvider()
    
    private let container = Container()
    let assembler: Assembler
    
    private init(){
        assembler = Assembler([ TestAssembly() ], container: container)
    }
       
}
