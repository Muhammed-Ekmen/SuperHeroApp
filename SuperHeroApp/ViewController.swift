//
//  ViewController.swift
//  SuperHeroApp
//
//  Created by Semih Ekmen on 28.02.2023.
//

/*
In this app,we will create quite big appliucation. There are 2 screen and this screen send some model from each other. The app is Marvel characters. We will learn the:
    - CollectionView
    - Seque
    - Cell
    - NavigationController
first of all, we need to ask What is the CollectionView. In the IOS, there are many views. CollectionView,TableView etc. So, collectionView is similar to your Iphone gallery photo template.



 ++++COLLECTION VIEW & NavigationController
 well, create a new View, I mean CollectionView from library. After that we need to add navigatorController, from here on on click the left yellow button on the collectionView screen, and on the tabbar click the editor>embed In>NavigatorController. When we doing this, there will a screen like name NavigatorController but that will not appear.

 * Other feature is init screen setting up. If you noticed, there is an arrow on the left side on your main screen. That arrow means this screeen is first appear when the app start. you can change it simply. Just drag the arrow to which screen you want will first appear. Other alternative is click the viewController icon on the screen, there will open the setting section on the screen's left side. In th propertyInspector section, there is a checkBox of "as inital view controller". if you open checkbox, it will init page. Okey,from here on we have created a new screen but we haven't connected them. in the progressivly, we gonna do. now, just fill the screens.

 * Now, we gonna create a viewController file. But before that, I wanna explain what is that ViewController. Basicly, your view's logics. When we create an app, it will automatically and its name is viewController. Actually, you can schange the name but if you did that, you have to change viewController section on the storyBoard. on the storyBoard click the viewController at the above of the screen, and go to third section that propertyInspector and you will see the class section. it inside text represent to your viewController file's class. I said that before, if you change the your name you need change it too.

 * well, in the collectionView set up the navigationItem(AppBar) and other UI. At the end of the all operations, we need to create viewController and connect the our collectionView. Therefore, click the command+n and select the "cocoa Touch Class" and create your collectionController but be careful for class name and type. your class type should be  UI

 * When we create a collectionView, there will a variable that reuseIdentifier. we will need to too much required. Also, you should assign your collectionViewController class to your screen on the stroyboard. Therefore, click your screen and viewController icon and right side panel. After thatdetect your class.
 
 
 +++++CELL
 *  use comand+n shortcut and select cocoaTouchClass. From here on, select the UICollectionViewCell and create your file. Customize your cell. I mean,
    you can checnge size,color adding label or anything. Let's supposed that we have added a label into the cell. In this time, we should assing to our
    collectionViewCell class. From here on, you have already know it, just drag and assing to your collectionViewCell. NOT collectionView. It is important.
 
 * in the collectionView has a few functions that help us to creativity. These Function in order:
    numberOfsection() => as you can understant from the name, number of the section on UI.
    collectionView(numberOfItemInSection) => how many item in each section.
    collectionView(callForItemAt) => Similar to listView.builder's itemBuilder. for example in the this function{
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"here will come from your reuseIdentifier",for: indexPath)
    
    if let customCell = cell as? CollectionViewCell {
        customCell.lblOgrenciAdi.text = "Ogrenci \(indexPath.row)"
        return customCell
 }
    
    return cell
 }
 
 SEQUE
 
 * it is kind of router. the usage is click the related screen and viewController icon. After that, drag the what screen you want to show. When you have done this, there would be open alert and you should select the
    show choice. After that, click the arrow of route and give the idenfier from left side menu. that identifier is too much important when you want to use that seque.
 
 
 STEPS:
    1 on the storyboard, add  as screen that collectionViewController from library.
    2 on the stroyboard, add the navigatorController and detect the init screen.
    3 create a viewController for your collectionView screen,connect your class to CollectionView on the storyBoard left Side,
    set up your reuseindefiert which represent to your cell.
    4 ajdust your UI components.
    5 create cell class.
    6 customize your cell and add it to your collectionViewCell class.
    7 create numberOfSection,collectionView with numberOfItemsInSection, collectionView with callForItemAt functions and setting up.
    8 find out your cell and creating our callForItemAt(itemBuilder).
    9 seque connect to other page.
    
*/



import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heroName: UILabel!
    var hero:ModelOfHero?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heroName.text = hero?.name ?? "None"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
}

