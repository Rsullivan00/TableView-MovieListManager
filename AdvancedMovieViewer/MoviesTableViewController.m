//
//  FirstViewController.m
//  AdvancedMovieViewer
//
//  Created by rick michael sullivan on 4/28/14.
//  Copyright (c) 2014 Rick Sullivan. All rights reserved.
//

#import "MoviesTableViewController.h"
#import "MovieViewController.h"
#import "MovieList.h"
#import "Movie.h"

@interface MoviesTableViewController ()

@end

@implementation MoviesTableViewController

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return movieList.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *movieCellID = @"MovieCell";
    
    UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier:movieCellID];
    
    if (newCell == nil)
    {
        newCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:movieCellID];
        
    }
    
    Movie *movie = [movieList objectAtIndex:indexPath.row];
    newCell.textLabel.text = movie.title;
    
    return newCell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyboard = self.storyboard;
    
    MovieViewController *movieViewController = [storyboard instantiateViewControllerWithIdentifier:@"MovieViewController"];
    movieViewController.movie = [movieList objectAtIndex:indexPath.row];
    /* Present corresponding movie view. After the view is displayed, unselect the selected table cell. */
    [self presentViewController:movieViewController animated:YES completion:^{[tableView deselectRowAtIndexPath:indexPath animated:YES];}];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* Designated initializer */
- (id) init
{
    if (self = [super init])
    {
        /* Initial assignment */
    }
    
    return self;
}

@end
