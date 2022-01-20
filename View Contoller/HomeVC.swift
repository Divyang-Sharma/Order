//
//  homevc.swift
//  Order
//
//  Created by cloud on 19/01/22.
//

import UIKit

class HomeVC: UIViewController {
    
    var objPostList:[PostModel?]=[]
    
    @IBOutlet weak var objTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let objnetworking=Network()
        objnetworking.getPostFrom(serverurl: Server.kPost.rawValue) { objmodel in
            self.objPostList=objmodel 
            DispatchQueue.main.async {
            self.objTable.reloadData()
            }
            print("dkdkd")
        }
}
}
extension HomeVC:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objPostList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        let objmoviecell=tableView.dequeueReusableCell(withIdentifier: "Moviecell") as? Moviecell
        let post=objPostList[indexPath.row]
        objmoviecell?.titleLabel.text=post?.title ?? ""
        return objmoviecell!
        }
}



        
    
    
