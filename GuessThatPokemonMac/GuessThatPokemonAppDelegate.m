//
//  GuessThatPokemonAppDelegate.m
//  GuessThatPokemonMac
//
//  Created by Xin Liu on 12/13/13.
//  Copyright (c) 2013 Anran Li. All rights reserved.
//

#import "GuessThatPokemonAppDelegate.h"

@implementation GuessThatPokemonAppDelegate

-(id)init
{
    self = [super init];
    
    if (self != nil)
    {
        _playerWindowController = [[GuessThatPokemonViewController alloc] init];
        [_playerWindowController.window setTitle:@"Guess That Pokemon"];
        [_playerWindowController.window makeKeyAndOrderFront:nil];
    }
    return self;
}

- (void)dealloc
{
    [_playerWindowController release];
    [super dealloc];
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    _playerWindowController = [[GuessThatPokemonViewController alloc] initWithWindowNibName:@"SudokuWindow"];
    
    [_playerWindowController.window setTitle:@"Guess That Pokemon"];
    [_playerWindowController.window makeKeyAndOrderFront:nil];
    
    //[self setUpDifficultyMenu];
}

-(void)redrawWindows
{
    [_playerWindowController redrawWindow];
    [_playerWindowController.window makeKeyAndOrderFront:nil];
}
@end
