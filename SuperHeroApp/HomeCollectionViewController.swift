//
//  HomeCollectionViewController.swift
//  SuperHeroApp
//
//  Created by Semih Ekmen on 28.02.2023.
//

import UIKit

private let reuseIdentifier = "HomeCollectionView"

class HomeCollectionViewController: UICollectionViewController {
    
    var currentIndex:Int = 0
    var heros:[ModelOfHero] = [ModelOfHero]()
    override func viewDidLoad() {
        let ironMan:ModelOfHero = ModelOfHero(name: "Iron Man")
        let thor:ModelOfHero = ModelOfHero(name: "Thor")
        let captainAmerica:ModelOfHero = ModelOfHero(name: "Captain America")
        let blackWidow:ModelOfHero = ModelOfHero(name: "Black Widow")
        let hulk:ModelOfHero = ModelOfHero(name: "Hulk")
        heros.append(ironMan)
        heros.append(thor)
        heros.append(captainAmerica)
        heros.append(blackWidow)
        heros.append(hulk)
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return heros.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        if let heroCell = cell as? HeroCollectionViewCell{
            heroCell.heroIndex.text = heros[indexPath.row].name
            return heroCell
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        currentIndex = indexPath.row
        performSegue(withIdentifier: "detail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewController{
            vc.hero = heros[currentIndex]
        }
    }
}



struct ModelOfHero {
    var name:String?
}
