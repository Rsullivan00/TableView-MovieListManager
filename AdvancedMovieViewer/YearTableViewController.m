//
//  YearTableViewController.m
//  AdvancedMovieViewer
//
//  Created by rick michael sullivan on 4/28/14.
//  Copyright (c) 2014 Rick Sullivan. All rights reserved.
//

#import "YearTableViewController.h"
#import "MovieList.h"
#import "Movie.h"

@interface YearTableViewController ()

@end

@implementation YearTableViewController

@synthesize years;

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return years.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *yearCellID = @"YearCell";
    
    UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier:yearCellID];
    
    if (newCell == nil)
    {
        newCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:yearCellID];
        
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
    [self presentViewController:movieViewController animated:YES completion:NULL];
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

@end
