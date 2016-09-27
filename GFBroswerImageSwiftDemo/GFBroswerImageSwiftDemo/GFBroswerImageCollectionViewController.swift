//
//  GFBroswerImageCollectionViewController.swift
//  GFBroswerImageSwiftDemo
//
//  Created by lizhongqiang on 2016/9/27.
//  Copyright © 2016年 lizhongqiang. All rights reserved.
//

import UIKit

class GFBroswerImageCollectionViewController: UIViewController {
    
    var imgCollectionView = UICollectionView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height - 64);
        flowLayout.scrollDirection = UICollectionViewScrollDirection.horizontal
        
        self.imgCollectionView = UICollectionView(frame: CGRect(x:0, y:0, width:self.view.frame.size.width, height:self.view.frame.size.height), collectionViewLayout: flowLayout)
        self.imgCollectionView.register(GFBroswerImageCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        self.imgCollectionView.isPagingEnabled = true
        self.imgCollectionView.isDirectionalLockEnabled = true
        self.imgCollectionView.dataSource = self
        self.imgCollectionView.delegate = self
        self.imgCollectionView.backgroundColor = UIColor.white
        self.imgCollectionView.showsHorizontalScrollIndicator = false
        self.imgCollectionView.contentSize = CGSize(width:self.view.frame.size.width * 10, height:self.view.frame.size.height - 64)
        self.view.addSubview(self.imgCollectionView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    

//    extension GFBroswerImageCollectionViewController: UICollectionViewDelegate,UICollectionViewDataSource{
//        
//    }
    
    
//    extension GFBroswerImageCollectionViewController : UICollectionViewDataSource {
//        
//    }

}

extension GFBroswerImageCollectionViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GFBroswerImageCollectionViewCell
        
        return cell
        
    }
}

extension GFBroswerImageCollectionViewController: UICollectionViewDelegate{
    
}

extension GFBroswerImageCollectionViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
}

