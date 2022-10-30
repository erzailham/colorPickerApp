//
//  GojekHeaderTableViewCell.swift
//  Color Picker
//
//  Created by Reza Ilham on 28/10/22.
//

import UIKit

class GojekHeaderTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GojekHeaderCollectionViewCell", for: indexPath) as! GojekHeaderCollectionViewCell
        
        cell.contenImageView.image = UIImage(named: "person1")
        
        return cell
    }

    
}
