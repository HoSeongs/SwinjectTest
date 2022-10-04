//
//  ContentView.swift
//  SwinjectTest
//
//  Created by 최호성 on 2022/08/16.
//

import SwiftUI
import Swinject

struct TestView: View {
    
    let viewModel: TestViewModel
    
    @State var isShow: Bool = false
    
    init(){
        viewModel = DependencyProvider.shared.assembler.resolver.resolve(TestViewModel.self)!
        viewModel.value = 1
    }
    
    var body: some View {
        Button("go detailView"){ isShow.toggle() }.sheet(isPresented: $isShow) {
            DetailView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
