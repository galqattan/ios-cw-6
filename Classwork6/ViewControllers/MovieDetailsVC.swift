//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by ghadeer alqattan on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    
    var selectedMovie = Movie(movieName: "", movieReleaseDate: 2000, actors: [], rating: 0.0, pgRating: "PG13")

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    @IBOutlet weak var ratingBG: UIView!
    @IBOutlet weak var ratedBG: UIView!
    @IBOutlet weak var yearBG: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
        
        // Do any additional setup after loading the view.
    }
    func setMovieDetails(){
        movieName.title = selectedMovie.movieName
        self.movieImg.image = UIImage(named: selectedMovie.movieName)
        self.movieRated.text = selectedMovie.pgRating
        self.movieRating.text = "\(selectedMovie.rating)"
        self.movieReleaseDate.text = "\(selectedMovie.movieReleaseDate)"
        self.actorImg1.image = UIImage(named: selectedMovie.actors[0])
        self.actorName1.text = selectedMovie.actors[0]
        self.actorImg2.image = UIImage(named: selectedMovie.actors[1])
        self.actorName2.text = selectedMovie.actors[1]
        self.actorImg3.image = UIImage(named: selectedMovie.actors[2])
        self.actorName3.text = selectedMovie.actors[2]

    }

    func configureUI (){
        ratedBG.layer.cornerRadius = 20
        ratingBG.layer.cornerRadius = 20
        yearBG.layer.cornerRadius = 20
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
