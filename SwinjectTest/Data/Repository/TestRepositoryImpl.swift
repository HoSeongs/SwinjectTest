//
//  TestRepositoryImpl.swift
//  SwinjectTest
//
//  Created by 최호성 on 2022/10/05.
//

import Foundation

class TestRepositoryImpl: TestRepository{
    
    let apiService : ApiService
    
    init(_ apiService: ApiService){
        self.apiService = apiService
    }
}
