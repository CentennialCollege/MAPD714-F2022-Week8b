import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    //let favouriteShows = ["Andor", "House of Dragon", "Lord of the Rings", "Star Trek: Strange New Worlds", "Mandalorian"]
    
    var favouriteShows: [TVShow] = []
    
    let favouriteShowsTableIdentifier = "FavouriteShowsTableIdentifier"
    
    // Life Cycle Function
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        buildFavouriteShows()
    }
    
    func buildFavouriteShows() -> Void
    {
        favouriteShows.append(TVShow(title: "Andor", studio: "Disney"))
        favouriteShows.append(TVShow(title: "House of the Dragon", studio: "HBO"))
        favouriteShows.append(TVShow(title: "Lord of the Rings", studio: "Prime Video"))
        favouriteShows.append(TVShow(title: "Star Trek: Strange New Worlds", studio: "Paramount+"))
        favouriteShows.append(TVShow(title: "Mandalorian", studio: "Disney"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return favouriteShows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: favouriteShowsTableIdentifier)
                if (cell == nil)
                {
                    cell = UITableViewCell(
                        style: UITableViewCell.CellStyle.subtitle,
                        reuseIdentifier: favouriteShowsTableIdentifier)
                }

        cell?.textLabel?.text = favouriteShows[indexPath.row].title
        var cellFont = UIFont.systemFont(ofSize: 24.0, weight: UIFont.Weight.ultraLight)
        
        cell?.textLabel?.font = cellFont
        
        cell?.detailTextLabel?.text = favouriteShows[indexPath.row].studio
        cell?.detailTextLabel?.textColor = UIColor.blue
        
                return cell!
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
    {
        return indexPath
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print(favouriteShows[indexPath.row].title)
        print(favouriteShows[indexPath.row].studio)
    }

}

