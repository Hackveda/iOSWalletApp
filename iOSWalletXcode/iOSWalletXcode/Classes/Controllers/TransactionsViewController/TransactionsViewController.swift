//
//  TransactionsViewController.swift
//  iOSWalletXcode
//
//  Created by Devanshu Shukla.
//  Copyright © 2018 Hackveda. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class TransactionsViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var sectionbalanceView: UIView!
    @IBOutlet weak var rectangle1View: UIView!
    @IBOutlet weak var rectangle1TwoView: UIView!
    @IBOutlet weak var rectangle1ThreeView: UIView!
    @IBOutlet weak var rectangle1FourView: UIView!
    @IBOutlet weak var btnmenuButton: SupernovaButton!
    @IBOutlet weak var btnnotificationButton: SupernovaButton!
    @IBOutlet weak var section2View: UIView!
    @IBOutlet weak var viewCollectionView: UICollectionView!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        self.setupComponents()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupLocalization()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup sectionbalanceView
        self.sectionbalanceView.layer.cornerRadius = 20
        self.sectionbalanceView.layer.masksToBounds = true
        
        // Setup rectangle1View
        self.rectangle1View.layer.cornerRadius = 10
        self.rectangle1View.layer.masksToBounds = true
        
        // Setup rectangle1TwoView
        self.rectangle1TwoView.layer.cornerRadius = 10
        self.rectangle1TwoView.layer.masksToBounds = true
        
        // Setup rectangle1ThreeView
        self.rectangle1ThreeView.layer.cornerRadius = 10
        self.rectangle1ThreeView.layer.masksToBounds = true
        
        // Setup rectangle1FourView
        self.rectangle1FourView.layer.cornerRadius = 10
        self.rectangle1FourView.layer.masksToBounds = true
        
        // Setup btnmenuButton
        self.btnmenuButton.snImageTextSpacing = 10
        
        // Setup btnnotificationButton
        self.btnnotificationButton.snImageTextSpacing = 10
        
        // Setup section2View
        self.section2View.layer.cornerRadius = 25
        self.section2View.layer.masksToBounds = true
        
        // Setup viewCollectionView
        
    }

    private func setupUI()  {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return true
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .default
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction public func onBtnMenuPressed(_ sender: UIButton)  {
        let alertController = UIAlertController(title: "Menu Button", message: "Menu Button is Clicked", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Option 1", style: .default, handler: { (action) in
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
        }))
        self.present(alertController, animated: true) {
        }
    }

    @IBAction public func onBtnNotificationPressed(_ sender: UIButton)  {
    
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension TransactionsViewController

extension TransactionsViewController: UICollectionViewDataSource  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func numberOfSections(in collectionView: UICollectionView) -> Int  {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int  {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell  {
        if (0..<3).contains(indexPath.row) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserTransactionCollectionViewCell", for: indexPath)
            self.configure(userTransactionCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UICollectionViewCell()
    }

    public func configure(userTransactionCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension TransactionsViewController

extension TransactionsViewController: UICollectionViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        print("Item selected at index \(indexPath)")
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension TransactionsViewController

extension TransactionsViewController: UICollectionViewDelegateFlowLayout  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize  {
        if (0..<3).contains(indexPath.row) {
            return CGSize(width: 311, height: 48)
        }
        
        return .zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat  {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat  {
        return 0
    }
}
