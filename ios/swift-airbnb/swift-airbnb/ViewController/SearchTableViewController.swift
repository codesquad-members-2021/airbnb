
import UIKit

class SearchTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView() {
        self.tableView.register(SearchResultTableViewCell.nib, forCellReuseIdentifier: SearchResultTableViewCell.identifier)
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchResultTableViewCell.identifier, for: indexPath) as? SearchResultTableViewCell else {
            return SearchResultTableViewCell()
        }
        return cell
    }
    
}
