//
//  PhotosViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 28/10/22.
//

import UIKit

class PhotosViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var photos: [Photos] = [Photos(photo: UIImage(named: "person1"), title: "Jajang"),
                            Photos(photo: UIImage(named: "person2"), title: "Budi"),
                            Photos(photo: UIImage(named: "person2"), title: "Budi"),
                            Photos(photo: UIImage(named: "person2"), title: "Budi"),
                            Photos(photo: UIImage(named: "person2"), title: "Budi"),
                            Photos(photo: UIImage(named: "person2"), title: "Budi"),
                            Photos(photo: UIImage(named: "person2"), title: "Budi"),
                            Photos(photo: UIImage(named: "person1"), title: "Jajang"),
                            Photos(photo: UIImage(named: "person1"), title: "Jajang"),
                            Photos(photo: UIImage(named: "person1"), title: "Jajang"),
                            Photos(photo: UIImage(named: "person1"), title: "Jajang"),
                            Photos(photo: UIImage(named: "person1"), title: "Jajang"),
                            Photos(photo: UIImage(named: "person1"), title: "Jajang")]
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PhotoCollectionViewCell
        
        let data = photos[indexPath.item]
        cell.photoImageView.image = data.photo
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
}
