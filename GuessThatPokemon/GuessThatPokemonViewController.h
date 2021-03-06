//
//  GuessThatPokemonViewController.h
//  GuessThatPokemon
//
//  Copyright (c) 2013 Anran Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GuessThatPokemonModel.h"
#import "GuessThatPokemonView.h"

@interface GuessThatPokemonViewController : UIViewController {
    @private
    GuessThatPokemonModel *_model;
    GuessThatPokemonView *_pokemonView;
    UILabel *_pokemonName;
    UILabel *_score;
}

@property (retain) GuessThatPokemonModel *_model;
@property (assign, nonatomic) IBOutlet GuessThatPokemonView *_pokemonView;
@property (assign, nonatomic) IBOutlet UILabel *_pokemonName;
@property (assign, nonatomic) IBOutlet UILabel *_score;

- (NSString*) guessPokemon: (CGPoint) location withX: (int) x andY: (int) y;
- (NSMutableArray*) getCurrentPokemon;

//- (IBAction) pressStart: (UIButton*) sender;
//- (void) update;

-(void)redrawWindow;

@end
