//
//  SelectedViewController.swift
//  Bekarys_Magauiya_MVVM
//
//  Created by Bekarys Magauiya on 06.05.2022.
//

import UIKit

class SelectedViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var Singerlabel: UILabel!
     
    var music : Music?
    
    
    @IBOutlet weak var TableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate=self
        TableView.dataSource=self
        // Do any additional setup after loading the view.
    }
    



}
extension SelectedViewController{
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Recently
        cell.MusicImage.image = UIImage(named: "Dua_Lipa_-_We're_Good_cover_art")
    cell.TitleLabel.text = music?.title
    cell.SingerLabel.text = music?.singer
        return cell
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
}
