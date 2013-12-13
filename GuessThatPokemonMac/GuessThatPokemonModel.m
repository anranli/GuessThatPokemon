//
//  GuessThatPokemonModel.m
//  GuessThatPokemon
//
//  Copyright (c) 2013 Anran Li. All rights reserved.
//

#import "GuessThatPokemonModel.h"

static GuessThatPokemonModel* gSharedModel;

@implementation GuessThatPokemonModel

@synthesize _correctPokemon;
@synthesize _currentPokemon;
@synthesize _numberCorrect;
@synthesize _numberGuessed;

- (id) init {
    self = [super init];
    if (self)
    {
        // figure out how to initialize pokemon set
        numberOfPokemon = 4;
        _pokemonLibrary = [[NSArray alloc] initWithContentsOfFile: [[NSBundle mainBundle] pathForResource: @"pokemon" ofType: @"plist"]];
		_currentPokemon = [[NSMutableArray alloc] init];
		[self start];
    }
    return self;
}

-(void)dealloc
{
    [_currentPokemon autorelease];
    [_correctPokemon autorelease];
    [super dealloc];
}

+(GuessThatPokemonModel*)sharedModel
{
    if (gSharedModel == nil)
    {
        gSharedModel = [[GuessThatPokemonModel alloc] init];
    }
    return gSharedModel;
}

- (void) start {
    _numberCorrect = 0;
    _numberGuessed = 0;
    
    [self step];
}

- (void) guess: (NSString*) str {
    if ([str isEqual: _correctPokemon]) {
        _numberCorrect++;
    }
    _numberGuessed++;
    [self step];
}

- (void) step {
    //pick pokemon to be correct
    [_currentPokemon removeAllObjects];
    _correctPokemon = [self generatePokemon];
    [_currentPokemon addObject: _correctPokemon];
    
    //fill list with Pokemon
    int index = rand() % numberOfPokemon;
    int i = 0;
    while (i < index) {
        NSString *temp = [self generatePokemon];
        if (![self contains: _currentPokemon element: temp]) {
            [_currentPokemon insertObject: temp atIndex: 0];
            i++;
        }
    }
    while ([_currentPokemon count] < numberOfPokemon) {
        NSString *temp = [self generatePokemon];
        if (![self contains: _currentPokemon element: temp]) {
            [_currentPokemon addObject: temp];
        }
        
    }
}

- (NSString*) generatePokemon {
    int index = rand() % [_pokemonLibrary count];
    //NSLog([NSString stringWithFormat:@"%i%@%@", index, @" ", [_pokemonLibrary objectAtIndex: index]]);
	return [_pokemonLibrary objectAtIndex: index];
}

- (BOOL) contains: (NSMutableArray*) set element: (NSString*) elem {
    for (NSString *setElem in set)
    {
        if ([setElem isEqual:elem])
        {
            return true;
        }
    }
    return false;
}

- (NSString*) guessPokemon: (CGPoint) location withX: (int) x andY: (int) y {
    if (location.x <= x) {
        if (location.y <= y) {
            [self guess: [_currentPokemon objectAtIndex: 0]];
            return [_currentPokemon objectAtIndex: 0];
        }
        else {
            [self guess: [_currentPokemon objectAtIndex: 2]];
            return [_currentPokemon objectAtIndex: 2];
        }
    }
    else {
        if (location.y <= y) {
            [self guess: [_currentPokemon objectAtIndex: 1]];
            return [_currentPokemon objectAtIndex: 1];
        }
        else {
            [self guess: [_currentPokemon objectAtIndex: 3]];
            return [_currentPokemon objectAtIndex: 3];
        }
    }
}

@end
