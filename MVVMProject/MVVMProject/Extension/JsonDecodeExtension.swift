//
//  JsonDecodeExtension.swift
//  MVVMProject
//
//  Created by Caramella on 1/12/24.
//

import Foundation

extension Bundle {
    
    // 파일 명을 넣어서 사용 
    func decode<T: Codable>(_ file: String) -> T {
        
        // 1. JSON 파일 가져오기
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("fail to locate \(file) in bundle")
        }
        // 2. JSON 로 부터 데이터 생성
        guard let data = try? Data(contentsOf: url) else {
            fatalError("fail to load \(file) from bundle")
        }
        
        // 3. JSON Decoder 생성
        let decoder = JSONDecoder()
        
        // 4. 만든 Decoder 를 통해서 데이터를 스위프트 상에서 읽을 수 있게 디코드 하기

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("fail to decode \(file) from bundle")
        }
        
        // 5. decode 된 데이터 리턴
        return loaded
    }
}
