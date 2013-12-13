//
//  GuessThatPokemonView.h
//  GuessThatPokemon
//
//  Copyright (c) 2013 Anran Li. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class GuessThatPokemonViewController;

@interface GuessThatPokemonView : NSView {
@private
    //GuessThatPokemonViewController *_viewController;
}

@property (assign, nonatomic) IBOutlet GuessThatPokemonViewController *_viewController;


//- (void) drawRect: (CGRect) rect;
//- (void) drawPokemon;
//- (void) touch: (NSSet*) touches withEvent: (UIEvent*) event;

- (void) drawHelper;

@end
