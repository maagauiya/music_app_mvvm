//
//  Dynamic.swift
//  Bekarys_Magauiya_MVVM
//
//  Created by Bekarys Magauiya on 06.05.2022.
//

import Foundation


class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }

}
