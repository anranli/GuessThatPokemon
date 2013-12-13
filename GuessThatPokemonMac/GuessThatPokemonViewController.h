//
//  GuessThatPokemonViewController.h
//  GuessThatPokemon
//
//  Created by Xin Liu on 12/13/13.
//  Copyright (c) 2013 Anran Li. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GuessThatPokemonModel.h"
#import "GuessThatPokemonView.h"

@interface GuessThatPokemonViewController : NSWindowController {
@private
    GuessThatPokemonModel *_model;
    GuessThatPokemonView *_pokemonView;
    NSString *_pokemonName;
    NSString *_score;
}

@property (retain) GuessThatPokemonModel *_model;
@property (assign, nonatomic) IBOutlet GuessThatPokemonView *_pokemonView;
@property (assign, nonatomic) IBOutlet NSString *_pokemonName;
@property (assign, nonatomic) IBOutlet NSString *_score;

- (NSString*) guessPokemon: (CGPoint) location withX: (int) x andY: (int) y;
- (NSMutableArray*) getCurrentPokemon;

//- (IBAction) pressStart: (UIButton*) sender;
//- (void) update;

-(void)redrawWindow;

@end
