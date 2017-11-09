//
//  WishListController.swift
//  137Proj
//
//  Created by ryannn on 10/24/17.
//  Copyright © 2017 ryan. All rights reserved.
//

import UIKit
var wishitems = ["test 1", "test 2"]

class WishListController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var WishList: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (wishitems.count);
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let prototype = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Prototype");
        prototype.textLabel?.text = wishitems[indexPath.row]
        return prototype;
    }
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            wishitems.remove(at: indexPath.row);
            WishList.reloadData();
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
