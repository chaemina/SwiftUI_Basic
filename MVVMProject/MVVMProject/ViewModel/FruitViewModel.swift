//
//  FruitViewModel.swift
//  MVVMProject
//
//  Created by Caramella on 1/11/24.
//

import Foundation

class FruitViewModel: ObservableObject {
    
    // property
    
    //published wrapper는 @state와 같은 기능의 상태값을 선언한다. 클래스에서는 published를 사용
    @Published var fruitArray : [FruitModel] = []
    @Published var isLoading : Bool = false
    
    init() {
        getFruit()
    }
    
    // function
    // fruit 생성하고, 배열에 추가하는 함수
    func getFruit() {
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 2)
        let fruit3 = FruitModel(name: "바나나", count: 7)
        
        // 3초 딜레이 후, 배열에 값 삽입하기
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    // fruit 삭제 하는 함수
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
}
