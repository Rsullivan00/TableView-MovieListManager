//
//  Movie.m
//  MovieViewer
//
//  Created by rick michael sullivan on 4/20/14.
//  Copyright (c) 2014 Rick Sullivan. All rights reserved.
//

#import "Movie.h"

@implementation Movie

@synthesize title, rating, releaseDate, director;

/* Designated initializer */
-(id) init
{
    if (self = [super init])
    {
        title = @"No title";
        rating = 0;
        releaseDate = [NSDate date];
        director = @"No director";
    }
    
    return self;
}

-(id) initWithTitle: (NSString *) newTitle
             rating: (int) newRating
        releaseDate: (NSDate *) newReleaseDate
           director: (NSString *) newDirector
{
    self = [self init];
    self.title = newTitle;
    self.rating = newRating;
    self.releaseDate = newReleaseDate;
    self.director = newDirector;
    
    return self;
}

+ (NSMutableArray *)defaultMovieList
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setDateFormat:@"mm/dd/yyyy"];
    
    return [[NSMutableArray alloc] initWithObjects:
            [[Movie alloc] initWithTitle:@"Gravity"
                                  rating:9
                             releaseDate:[dateFormatter dateFromString:@"11/11/2013"]
                                director:@"Alfonso Cuaron"],
            [[Movie alloc] initWithTitle:@"The Wolf of Wall Street"
                                  rating:8
                             releaseDate:[dateFormatter dateFromString:@"12/15/2013"]
                                director:@"Martin Scorsese"],
            [[Movie alloc] initWithTitle:@"Frozen"
                                  rating:8
                             releaseDate:[dateFormatter dateFromString:@"02/08/2014"]
                                director:@"Jennifer Lee"],
            [[Movie alloc] initWithTitle:@"Titanic"
                                  rating:7
                             releaseDate:[dateFormatter dateFromString:@"03/27/2005"]
                                director:@"James Cameron"],
            nil];
}

@end
