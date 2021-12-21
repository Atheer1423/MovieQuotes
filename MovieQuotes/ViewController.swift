//
//  ViewController.swift
//  MovieQuotes
//
//  Created by admin on 21/12/2021.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {
    
    var index = 0
var Movies = [ MovieData(Title: "Home alone", Image: "https://i.etsystatic.com/13294755/r/il/e3627f/2127795233/il_570xN.2127795233_bbj4.jpg", Quote: "Look what you did, you little jerk."),MovieData(Title: "Spider man", Image: "https://w0.peakpx.com/wallpaper/174/102/HD-wallpaper-doctor-strange-in-spider-man-no-way-home-spider-man-no-way-home-spiderman-2021-movies-movies-doctor-strange.jpg", Quote: "Remember, with great power comes great responsibility."), MovieData(Title: "Harry potter", Image: "https://movieposters2.com/images/1744579-b.jpg", Quote: "Differences of habit and language are nothing at all if our aims are identical and our hearts are open"),MovieData(Title: "Stranger things", Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXfXWwCOhQzC46gxzdW2cxBnpmaiHAGXmRVg&usqp=CAU", Quote: "You Did It! You Won A Fight!"), MovieData(Title: "Avengers", Image: "https://static.wikia.nocookie.net/marvelmovies/images/8/8f/2012_Avengers_Poster.jpg/revision/latest?cb=20210622013030", Quote: "If we’re going to win this fight, some of us might have to lose it."),MovieData(Title: "Home alone", Image: "https://i.etsystatic.com/13294755/r/il/e3627f/2127795233/il_570xN.2127795233_bbj4.jpg", Quote: "Look what you did, you little jerk."),MovieData(Title: "Spider man", Image: "https://w0.peakpx.com/wallpaper/174/102/HD-wallpaper-doctor-strange-in-spider-man-no-way-home-spider-man-no-way-home-spiderman-2021-movies-movies-doctor-strange.jpg", Quote: "Remember, with great power comes great responsibility."), MovieData(Title: "Harry potter", Image: "https://movieposters2.com/images/1744579-b.jpg", Quote: "Differences of habit and language are nothing at all if our aims are identical and our hearts are open"),MovieData(Title: "Stranger things", Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXfXWwCOhQzC46gxzdW2cxBnpmaiHAGXmRVg&usqp=CAU", Quote: "You Did It! You Won A Fight!"), MovieData(Title: "Avengers", Image: "https://static.wikia.nocookie.net/marvelmovies/images/8/8f/2012_Avengers_Poster.jpg/revision/latest?cb=20210622013030", Quote: "If we’re going to win this fight, some of us might have to lose it."),MovieData(Title: "Home alone", Image: "https://i.etsystatic.com/13294755/r/il/e3627f/2127795233/il_570xN.2127795233_bbj4.jpg", Quote: "Look what you did, you little jerk."),MovieData(Title: "Spider man", Image: "https://w0.peakpx.com/wallpaper/174/102/HD-wallpaper-doctor-strange-in-spider-man-no-way-home-spider-man-no-way-home-spiderman-2021-movies-movies-doctor-strange.jpg", Quote: "Remember, with great power comes great responsibility."), MovieData(Title: "Harry potter", Image: "https://movieposters2.com/images/1744579-b.jpg", Quote: "Differences of habit and language are nothing at all if our aims are identical and our hearts are open"),MovieData(Title: "Stranger things", Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXfXWwCOhQzC46gxzdW2cxBnpmaiHAGXmRVg&usqp=CAU", Quote: "You Did It! You Won A Fight!"), MovieData(Title: "Avengers", Image: "https://static.wikia.nocookie.net/marvelmovies/images/8/8f/2012_Avengers_Poster.jpg/revision/latest?cb=20210622013030", Quote: "If we’re going to win this fight, some of us might have to lose it."),MovieData(Title: "Home alone", Image: "https://i.etsystatic.com/13294755/r/il/e3627f/2127795233/il_570xN.2127795233_bbj4.jpg", Quote: "Look what you did, you little jerk."),MovieData(Title: "Spider man", Image: "https://w0.peakpx.com/wallpaper/174/102/HD-wallpaper-doctor-strange-in-spider-man-no-way-home-spider-man-no-way-home-spiderman-2021-movies-movies-doctor-strange.jpg", Quote: "Remember, with great power comes great responsibility."), MovieData(Title: "Harry potter", Image: "https://movieposters2.com/images/1744579-b.jpg", Quote: "Differences of habit and language are nothing at all if our aims are identical and our hearts are open"),MovieData(Title: "Stranger things", Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXfXWwCOhQzC46gxzdW2cxBnpmaiHAGXmRVg&usqp=CAU", Quote: "You Did It! You Won A Fight!"), MovieData(Title: "Avengers", Image: "https://static.wikia.nocookie.net/marvelmovies/images/8/8f/2012_Avengers_Poster.jpg/revision/latest?cb=20210622013030", Quote: "If we’re going to win this fight, some of us might have to lose it.")]
    
    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: String(describing: MovieCell.self), for: indexPath) as! MovieCell
        cell.TitleOutlet.text = Movies[indexPath.row].Title
       
        if let url = Movies[indexPath.row].Image {
            cell.ImageOutlet.kf.setImage(with:URL(string: url))
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        index = indexPath.row
        print("index: \(index)")
        performSegue(withIdentifier: "NextVC", sender: indexPath)
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let distination = segue.destination as! QuoteVCViewController
        distination.quote = Movies[index].Quote
       
    
    }
    
   
}

struct MovieData {
    var Title:String?
    var Image:String?
    var Quote:String?
    
}



