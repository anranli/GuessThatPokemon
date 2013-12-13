//
//  GuessThatPokemonAppDelegate.h
//  GuessThatPokemonMac
//
//  Created by Xin Liu on 12/13/13.
//  Copyright (c) 2013 Anran Li. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GuessThatPokemonViewController.h"

@interface GuessThatPokemonAppDelegate : NSObject <NSApplicationDelegate>
{
@private
    GuessThatPokemonViewController *_playerWindowController;
}

@property (assign) IBOutlet NSWindow *window;

-(void)redrawWindows;

@end
