//
//  DetailItemViewController.swift
//  OpenMarket
//
//  Created by 최정민 on 2021/05/28.
//

import UIKit

class DetailItemViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var postTitle: UILabel!
    @IBOutlet var stock: UILabel!
    @IBOutlet var discountedPrice: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var descriptions: UILabel!
    static let storyboardID = "DetailItemViewController"
    var detailItemData: InformationOfItemResponse?
    lazy var actionSheetButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        button.tintColor = UIColor.systemBlue
        button.addTarget(self, action: #selector(showActionSheet), for: .touchDown)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
        initNavigationBar()
    }
    
    private func setUpCollectionView() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        let PhotoCollectionViewCellNib = UINib(nibName: PhotoCollectionViewCell.identifier, bundle: nil)
        self.collectionView.register(PhotoCollectionViewCellNib, forCellWithReuseIdentifier: PhotoCollectionViewCell.identifier)
    }
    func initNavigationBar() {
        self.navigationController?.navigationBar.topItem?.backButtonTitle = ""
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: actionSheetButton)
        self.navigationItem.title = "27형 iMac Retina"
    }
    
    func setUpDataOfViewController() {
        guard let detailItemData = detailItemData else { return }
       
        postTitle.text = detailItemData.title
        stock.text = String(detailItemData.stock)
        price.text = String(detailItemData.price)
        descriptions.text = detailItemData.descriptions
        
        
    }
    
    func presentAlert(
                      isCancelActionIncluded: Bool = false,
                      preferredStyle style: UIAlertController.Style = .alert,
                      with actions: UIAlertAction ...) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: style)
        actions.forEach { alert.addAction($0) }
        if isCancelActionIncluded {
            let actionCancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
            alert.addAction(actionCancel)
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func showActionSheet(_ sender: Any) {
        let editAction = UIAlertAction(title: "수정", style: .default) { action in
            
        }
        let deleteAction = UIAlertAction(title: "삭제", style: .default) { action in
            
        }
        deleteAction.setValue(UIColor.red, forKey: "titleTextColor")
        presentAlert(isCancelActionIncluded: true, preferredStyle: .actionSheet, with: editAction,deleteAction)
    }
}

extension DetailItemViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        guard let detailItemData = detailItemData else { return 0 }
//        return detailItemData.images.count
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionViewCell.identifier, for: indexPath) as? PhotoCollectionViewCell else  {
            return UICollectionViewCell()
        }
//        guard let detailItemData = detailItemData else { return cell }
//        cell.itemImage.image = UIImage(named: detailItemData.images[indexPath.item])
        cell.itemImage.image = UIImage(named: "imac1")
        return cell
        
    }
    
}

extension DetailItemViewController: UICollectionViewDelegate {
    
}

extension DetailItemViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: collectionView.frame.height, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
}
