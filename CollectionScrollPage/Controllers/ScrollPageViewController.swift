//
//  ScrollPAgeViewController.swift
//  CollectionScrollPage
//
//  Created by Macservis on 13/04/22.
//

import UIKit

class ScrollPageViewController: UIViewController {

   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }


        //MARK: Methods
    func startFunction() {
        view.backgroundColor = UIColor.white
        
        
        setNavigation()
    }
    

    
    func  setNavigation() {
        title = "ScrollPage"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_back"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(goExit))
    }
    
    
    //MARK: objc Methods
    
    @objc func goExit() {
        navigationController?.popViewController(animated: true)
    }
}
