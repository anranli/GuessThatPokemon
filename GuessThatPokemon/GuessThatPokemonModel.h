//
//  GuessThatPokemonModel.h
//  GuessThatPokemon
//
//  Copyright (c) 2013 Anran Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GuessThatPokemonModel : NSObject {
    
    @private
    int _numberGuessed;
    int _numberCorrect;
    int numberOfPokemon;
    
    NSArray *_pokemonLibrary;
    NSMutableArray *_currentPokemon;
    
    NSString *_correctPokemon;
}

//@property (nonatomic, retain) NSMutableSet *_pokemonLibrary;
@property (nonatomic, retain) NSMutableArray *_currentPokemon;
@property (retain) NSString *_correctPokemon;
@property (assign) int _numberGuessed;
@property (assign) int _numberCorrect;

+(GuessThatPokemonModel*) sharedModel;
- (void) start;
- (void) guess: (NSString*) str;
- (void) step;
- (NSString*) generatePokemon;
- (NSString*) guessPokemon: (CGPoint) location withX: (int) x andY: (int) y;

@end

