//
//  SkillsCollectionViewController.swift
//  Sumarry
//
//  Created by Bioo on 13.06.2020.
//  Copyright © 2020 Bioo. All rights reserved.
//

import UIKit

class SkillsCollectionViewController: UICollectionViewController {
    
    var model: SomeModel!
    
    lazy var myPageControl = UIPageControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.scrollDirection = .horizontal
        
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isPagingEnabled = true
        
        model = SomeModel()
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.item {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstScreenCell", for: indexPath) as! ScreenCell
            cell.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            cell.skillsLabel.text = model.firstScreenLabel
            cell.infoLabel.text = model.firstScreenLabel2
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "secondScreenCell", for: indexPath) as! ScreenCell
            cell.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            cell.skillsLabel.text = model.secondScreenLabel
            cell.infoLabel.text = model.secondScreenLabel2
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "thirdScreenCell", for: indexPath) as! ScreenCell
            cell.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            cell.skillsLabel.text = model.thirdScreenLabel
            cell.infoLabel.text = model.thirdScreenLabel2
            return cell
        default:
            fatalError("Number of items in collection view must equal to 3")
       }
    }

    @IBAction func showAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension SkillsCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: view.frame.width, height: view.frame.height)
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let center = CGPoint(x: scrollView.contentOffset.x + (scrollView.frame.width / 2), y: (scrollView.frame.height / 2))
        if let indexPath = collectionView.indexPathForItem(at: center), indexPath.item != myPageControl.currentPage {
            myPageControl.currentPage = indexPath.item
        }
    }
    
    private func setupPageControl() {
        myPageControl.translatesAutoresizingMaskIntoConstraints = false
        myPageControl.pageIndicatorTintColor = .black
        self.view.addSubview(myPageControl)
        myPageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myPageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20.0).isActive = true
        myPageControl.numberOfPages = 3
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if myPageControl.superview == nil {
          setupPageControl()
        }
    }
    
}
