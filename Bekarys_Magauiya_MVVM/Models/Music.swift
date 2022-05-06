//
//  Music.swift
//  Bekarys_Magauiya_MVVM
//
//  Created by Bekarys Magauiya on 06.05.2022.
//

import Foundation
import RealmSwift
import UIKit
import CoreData


class Music: Object {
    @Persisted var title: String = ""
    @Persisted var singer: String = ""
    @Persisted var imagepath: String = ""
}
