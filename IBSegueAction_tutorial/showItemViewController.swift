//
//  showItemViewController.swift
//  IBSegueAction_tutorial
//
//  Created by 준수김 on 2022/08/04.
//

import UIKit

class showItemViewController: UIViewController {

    let itemTitle: String // 전환 전의 화면에서 받아올 데이터를 담는 변수
    
    init?(coder: NSCoder, itemTitle: String){
        self.itemTitle = itemTitle
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var itemTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemTitleLabel.text = itemTitle
       
    }
}
