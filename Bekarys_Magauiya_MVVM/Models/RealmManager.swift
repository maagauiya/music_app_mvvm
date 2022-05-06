//
//  RealmManager.swift
//  Bekarys_Magauiya_MVVM
//
//  Created by Bekarys Magauiya on 06.05.2022.
//

import Foundation
import RealmSwift
import Foundation

class RealmManager  {
    
    static var shared = RealmManager()
    var  music1 = [Music]()
    
    typealias completionHandler = () -> Void
    
    let realm = try! Realm()
    
    func savemusic(title:String,singer:String,imagepath:String){
        try! realm.write{
            let music = Music()
            music.title = title
            music.singer = singer
            music.imagepath = imagepath
            realm.add(music)
        }
    }
    
    func loadmusic() -> [Music]{
        music1.removeAll()
        self.realm.beginWrite()
        let w = realm.objects(Music.self)
        for i in w{
            music1.append(i)
        }
        try! self.realm.commitWrite()
        return music1
    }
    
    
}
