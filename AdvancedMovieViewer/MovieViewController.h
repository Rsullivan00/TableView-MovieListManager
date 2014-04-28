//
//  MovieViewController.h
//  AdvancedMovieViewer
//
//  Created by rick michael sullivan on 4/28/14.
//  Copyright (c) 2014 Rick Sullivan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MovieViewController : UIViewController

@property Movie *movie;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;
@property (weak, nonatomic) IBOutlet UILabel *releaseDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *directorLabel;

- (IBAction) back;

/* Designated initializer */
- (id) initWithMovie: (Movie *) newMovie;
@end
