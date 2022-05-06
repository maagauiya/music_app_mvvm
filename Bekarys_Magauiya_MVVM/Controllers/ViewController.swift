//
//  ViewController.swift
//  Bekarys_Magauiya_MVVM
//
//  Created by Bekarys Magauiya on 06.05.2022.
//

import UIKit
import RealmSwift
class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
 
    let vm = RealmManager.shared
    let realm = try! Realm()

    @IBOutlet weak var RecentlyTableView: UITableView!
    
    @IBOutlet weak var MostPlayedTableView: UITableView!
    
    @IBOutlet weak var AlbumsTableView: UITableView!
    var viewModel = ViewModel()
    
    var a = [Music]()
    override func viewDidAppear(_ animated: Bool) {
//        self.data.removeAll()
         
         a = vm.loadmusic()
        RecentlyTableView.reloadData()
        MostPlayedTableView.reloadData()
        AlbumsTableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RecentlyTableView.dataSource=self
        RecentlyTableView.delegate=self
        MostPlayedTableView.dataSource=self
        MostPlayedTableView.delegate=self
        AlbumsTableView.dataSource=self
        AlbumsTableView.delegate=self
    }

   
}
extension ViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == RecentlyTableView {
            return 1
        }
        else if tableView == MostPlayedTableView{
            return 3
        }
        else {
            return 2
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  tableView == RecentlyTableView {
            let cell = RecentlyTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Recently
            cell.MusicImage.image = UIImage(named: "Dua_Lipa_-_We're_Good_cover_art")
            cell.TitleLabel.text = "dsadas"
            cell.SingerLabel.text = "fdsadsa"
            return cell
        }
        else if  tableView == MostPlayedTableView{
            
            let cell = MostPlayedTableView.dequeueReusableCell(withIdentifier: "mostcell", for: indexPath) as! Most
            cell.MusicImage.image = UIImage(named: "asap")
            cell.TitleLabel.text = "Asap"
            cell.SingerLabel.text = "Rocky"
            return cell
        }
        else{
            let cell = AlbumsTableView.dequeueReusableCell(withIdentifier: "albumscell", for: indexPath) as! Albums
            cell.MusicImage.image = UIImage(named: "XXXTentacion")
            cell.TitleLabel.text = "J"
            cell.SingerLabel.text = "S"
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "selected") as! SelectedViewController
        vc.music1 = a[indexPath.row]

        navigationController?.pushViewController(vc, animated: true)
    }
}

// mostcell albumscell
