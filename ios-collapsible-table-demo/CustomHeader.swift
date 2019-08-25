import Foundation
import UIKit

protocol CustomHeaderDelegate {
    func didTapHeader(section: Section)
}

class CustomHeader: UITableViewHeaderFooterView {
    @IBOutlet weak var titleLabel: UILabel!
    var delegate: CustomHeaderDelegate? = nil
    
    var section: Section!
    
    func render(_ section: Section) {
        self.section = section
        titleLabel.text = section.title
        contentView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapHeader(_:))))
    }
    
    
    @objc func tapHeader(_ gestureRecognizer: UITapGestureRecognizer) {
        
        delegate?.didTapHeader(section: section)
        
    }
}
