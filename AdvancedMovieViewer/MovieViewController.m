//
//  MovieViewController.m
//  AdvancedMovieViewer
//
//  Created by rick michael sullivan on 4/28/14.
//  Copyright (c) 2014 Rick Sullivan. All rights reserved.
//

#import "MovieViewController.h"

@interface MovieViewController ()

@end

@implementation MovieViewController

@synthesize movie, titleLabel, ratingLabel, releaseDateLabel, directorLabel;

- (void)drawMovie
{
    titleLabel.text = movie.title;
    ratingLabel.text = [NSString stringWithFormat:@"Rating: %d/10", movie.rating];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    releaseDateLabel.text = [NSString stringWithFormat:@"Release date: %@", [dateFormatter stringFromDate:movie.releaseDate]];
    directorLabel.text = [NSString stringWithFormat:@"Director: %@", movie.director];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self drawMovie];
}

- (IBAction) back
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* Designated initializer */
- (id) initWithMovie: (Movie *) newMovie
{
    if (self = [super init])
    {
        self.movie = newMovie;
    }
    
    return self;
}

@end
