//
//  ViewController.swift
//  IBSegueAction_tutorial
//
//  Created by 준수김 on 2022/08/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var tableViewCellItem = ["Item 1", "Item 2", "Item 3"]
    var tableViewCellTitle = ["Item 1 인데요?", "Item 2 일까요?", "Item 3은 맞는데요?"]
    var seletItem = 0 // 선택된 cell의 indexPath.row를 담는 변수
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
    }

//MARK: - IBSegueAction
    @IBSegueAction func goToNextVC(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> showItemViewController? {
        return showItemViewController(coder: coder, itemTitle: tableViewCellTitle[seletItem])
    }
    
    
}

//MARK: - Extension(TableView)
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewCellItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "ContentCell", for: indexPath)
        cell.textLabel?.text = tableViewCellItem[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        seletItem = indexPath.row
        performSegue(withIdentifier: "goToShowVC", sender: self) //Segue를 작동시키기 위한 부분 
    }
}

