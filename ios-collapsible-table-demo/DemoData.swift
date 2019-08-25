import Foundation


class Section {
    let title: String
    let items: [String]
    var isCollapsed: Bool = false
    
    init(title: String, items: [String]) {
        self.title = title
        self.items = items
    }
}

func data() -> [Section] {
    return [
        Section(title: "Section A", items: ["item A1", "item A2", "item A3"]),
        Section(title: "Section B", items: ["item B1", "item B2", "item B3"]),
    ]
    
}
