//
//  HomeViewController.swift
//  CollectionScrollPage
//
//  Created by Macservis on 13/04/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   //MARK: Server Data
    var serverData: [Product] = []
  
   //MARK: outlets
    
    @IBOutlet weak var nmcollectionView: UICollectionView!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       startFunction()
    }


   //MARK: Methods
    
    func  startFunction() {
        self.view.backgroundColor = UIColor.white
        
        
        setaupCollectionView()
        
        seerverDataAppend()
        startNavigation()
    }
    
    func  setaupCollectionView() {
        
        nmcollectionView.delegate = self
        nmcollectionView.dataSource = self
        nmcollectionView.register(UINib(nibName: "ProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
        
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30) / 2, height: ( UIScreen.main.bounds.height - 60 - (navigationController?.navigationBar.frame.height ?? 40)) / 3)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .vertical
        
        nmcollectionView.collectionViewLayout = layout
        
    
    }
    
    
    func startNavigation() {
        title = "CollectionPage"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_scroll"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(goSCroll))
        
    }
    
    func seerverDataAppend(){
        serverData.append(Product(name: "naushnik", price: "10", image: "im_product1"))
        serverData.append(Product(name: "car", price: "1000", image: "im_product2"))
        serverData.append(Product(name: "nike", price: "100", image: "im_product3"))
        serverData.append(Product(name: "song", price: "11", image: "im_product4"))
        serverData.append(Product(name: "clock", price: "100", image: "im_product5"))
        serverData.append(Product(name: "velik", price: "200", image: "im_product6"))
        serverData.append(Product(name: "camera", price: "300", image: "im_product7"))
        serverData.append(Product(name: "naushnik", price: "10", image: "im_product1"))
        serverData.append(Product(name: "car", price: "1000", image: "im_product2"))
        serverData.append(Product(name: "nike", price: "100", image: "im_product3"))
        serverData.append(Product(name: "song", price: "11", image: "im_product4"))
        serverData.append(Product(name: "clock", price: "100", image: "im_product5"))
        serverData.append(Product(name: "velik", price: "200", image: "im_product6"))
        serverData.append(Product(name: "camera", price: "300", image: "im_product7"))
        serverData.append(Product(name: "naushnik", price: "10", image: "im_product1"))
        serverData.append(Product(name: "car", price: "1000", image: "im_product2"))
        serverData.append(Product(name: "nike", price: "100", image: "im_product3"))
        serverData.append(Product(name: "song", price: "11", image: "im_product4"))
        serverData.append(Product(name: "clock", price: "100", image: "im_product5"))
        serverData.append(Product(name: "velik", price: "200", image: "im_product6"))
        serverData.append(Product(name: "camera", price: "300", image: "im_product7"))
        serverData.append(Product(name: "naushnik", price: "10", image: "im_product1"))
        serverData.append(Product(name: "car", price: "1000", image: "im_product2"))
        serverData.append(Product(name: "nike", price: "100", image: "im_product3"))
        serverData.append(Product(name: "song", price: "11", image: "im_product4"))
        serverData.append(Product(name: "clock", price: "100", image: "im_product5"))
        serverData.append(Product(name: "velik", price: "200", image: "im_product6"))
        serverData.append(Product(name: "camera", price: "300", image: "im_product7"))
    }
    
    //MARK: objc methods
    
    @objc func goSCroll() {
        navigationController?.pushViewController(ScrollPageViewController(), animated: true)
    }
    
    
    //MARK: collection view elements
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return serverData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = serverData[indexPath.row]
        let cell = nmcollectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.identifier, for: indexPath) as! ProductCollectionViewCell
        cell.nmImageView.image = UIImage(named: item.image!)
        cell.nmNameLabel.text = item.name
        cell.nmPriceLabel.text = "\(item.price ?? "null") $"
        
        return cell
    }
 
}
