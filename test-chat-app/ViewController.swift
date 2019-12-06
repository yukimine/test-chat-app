//
//  ViewController.swift
//  test-chat-app
//
//  Created by yukimine on 2019/12/04.
//  Copyright © 2019 yukimine. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var message: [String] = []

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bodyTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return message.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath)

        cell.textLabel!.text = message[indexPath.row]
        
        return cell
    }

    @IBAction func touchedSubmitButton(_ sender: UIButton) {
        guard let body = bodyTextField.text else { return }

        message.append(body)
        tableView.reloadData()
    }
}
