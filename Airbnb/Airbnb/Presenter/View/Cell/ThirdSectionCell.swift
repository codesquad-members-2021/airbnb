import UIKit
import RxSwift
import RxCocoa

final class ThirdSectionCell: UICollectionViewCell {
    
    static let identifier = "ThirdSectionCell"
    
    private lazy var horizontalCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height), collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor.clear
        collectionView.register(TravelInfoCell.self, forCellWithReuseIdentifier: TravelInfoCell.identifier)
        collectionView.delegate = self
        return collectionView
    }()
    
    private let viewModel = TravelInfoViewModel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainCellView()
        bind()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupMainCellView()
        bind()
    }
}

private extension ThirdSectionCell {
    
    private func setupMainCellView() {
        addSubview(horizontalCollectionView)
    }
    
    private func bind() {
        viewModel.getViewData()
            .drive(horizontalCollectionView.rx.items(cellIdentifier: TravelInfoCell.identifier, cellType: TravelInfoCell.self)) { row, data, cell in
                cell.configure(data)
            }.disposed(by: rx.disposeBag)
    }
}

extension ThirdSectionCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let (width, height) = (frame.width*0.6, frame.height)
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
}
