//
//  GuessThatPokemonView.h
//  GuessThatPokemon
//
//  Copyright (c) 2013 Anran Li. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GuessThatPokemonViewController;

@interface GuessThatPokemonView : UIView {
    @private
    //GuessThatPokemonViewController *_viewController;
}

@property (assign, nonatomic) IBOutlet GuessThatPokemonViewController *_viewController;


//- (void) drawRect: (CGRect) rect;
//- (void) drawPokemon;
- (void) touch: (NSSet*) touches withEvent: (UIEvent*) event;

@end
