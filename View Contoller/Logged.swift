//
//  Logged.swift
//  Order
//
//  Created by cloud on 18/01/22.
//

import UIKit

class Logged: UIViewController {
    var receivedData:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        print(receivedData ?? "")
}
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }    

}
