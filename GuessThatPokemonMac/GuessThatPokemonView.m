//
//  GuessThatPokemonView.m
//  GuessThatPokemon
//
//  Copyright (c) 2013 Anran Li. All rights reserved.
//

#import "GuessThatPokemonView.h"
#import "GuessThatPokemonViewController.h"

@implementation GuessThatPokemonView

@synthesize _viewController;

- (id)init
{
    self = [super init];
    if (self)
    {
        //
    }
    return self;
}

-(void) dealloc
{
    [_viewController release];
    [super dealloc];
}

/*
 - (id)init {
 self = [super init];
 if (self) {
 
 }
 return self;
 }*/

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

- (void) drawRect: (CGRect) rect {
    [self drawHelper];
}

- (void) drawHelper {
    if (self._viewController._model != nil)
    {
        CGFloat w = self.bounds.size.width / 2.0;
        CGFloat h = self.bounds.size.height / 2.0;
        
        int count = 0;
        NSMutableArray *currentPokemon = [_viewController getCurrentPokemon];
        for (int i = 0; i <=h; i+=w) {
            for (int j = 0; j <= h; j+=h){
                CGFloat x = (CGFloat)i;
                CGFloat y = (CGFloat)j;
                CGRect selectionRect = CGRectMake(x, y, w, h);
                
                NSString* tempImgName = [NSString stringWithFormat:@"%@%@", @"CHESPIN", @".png"];
                NSImage *tempImg = [NSImage imageNamed: tempImgName];
                [tempImg drawInRect: selectionRect];
                count++;
            }
        }
    }

}

-(void)mouseDown:(NSEvent *)event {
    NSPoint location = [event locationInWindow];
    CGFloat x = self.bounds.size.width / 2;
    CGFloat y = self.bounds.size.height / 2;
    
    /*NSString *selectedPokemon = */[_viewController guessPokemon: location withX: x andY: y];
    
    [self setNeedsDisplay: YES];
}

- (BOOL) acceptsFirstResponder {
    return ( YES );
}

@end
