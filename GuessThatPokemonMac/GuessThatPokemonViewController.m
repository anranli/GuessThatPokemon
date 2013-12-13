//
//  GuessThatPokemonViewController.m
//  GuessThatPokemon
//
//  Copyright (c) 2013 Anran Li. All rights reserved.
//

#import "GuessThatPokemonViewController.h"

@interface GuessThatPokemonViewController ()

@end

@implementation GuessThatPokemonViewController

@synthesize _model;
@synthesize _score;
@synthesize _pokemonName;
@synthesize _pokemonView;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self != nil)
    {
        _model = [[GuessThatPokemonModel alloc] init];
        _pokemonView = [[GuessThatPokemonView alloc] init];
        
        // ? [_pokemonView setNeedsDisplay];
    }
    return self;
}

- (id)init
{
    self = [super initWithWindowNibName:@"SudokuWindow"];
    
    if ( self )
    {
        [self showWindow:self];
        _pokemonView = [[GuessThatPokemonView alloc] init];
        _model = [[GuessThatPokemonModel alloc] init];
        
    }
    
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    _model = [GuessThatPokemonModel sharedModel];
    [_pokemonView setNeedsDisplay:YES];
}

- (void)dealloc {
    [_model release];
    [_pokemonView release];
    [_pokemonName release];
    [_score release];
    [super dealloc];
}


- (NSString*) guessPokemon: (CGPoint) location withX: (int) x andY: (int) y {
    NSString *temp = [_model guessPokemon: location withX: x andY: y];
    //_pokemonName.text = _model._correctPokemon;
    //_score.text = [NSString stringWithFormat:@"%i%@%i", _model._numberCorrect, @"/", _model._numberGuessed];
    return temp;
}

- (NSMutableArray*) getCurrentPokemon {
    return _model._currentPokemon;
}

/*
 - (IBAction) pressStart: (UIButton*) sender {
 [_model start];
 [self update];
 }
 
 - (IBAction) pressGuess: (UITextField*) sender {
 [_model guess: sender.text];
 [self update];
 
 if ([_model isGameOver]) {
 _incorrectGuesses.text = @"You lose!";
 }
 else if ([_model isGameWon]) {
 _incorrectGuesses.text = @"You win!";
 }
 
 sender.text = @"";
 [sender resignFirstResponder];
 [_hangmanView becomeFirstResponder];
 }
 
 - (void) update {
 _correctGuesses.text = [_model setToString: [_model _correctLettersGuessed]];
 _incorrectGuesses.text = [_model setToString: [_model _incorrectLettersGuessed]];
 _incorrectGuesses.text = @"Game is in progress";
 
 [_hangmanView drawHangman: [_model step]];
 [self.view setBackgroundColor:[UIColor colorWithPatternImage:[_hangmanView _imgName]]];
 _image1.image = [UIImage imageNamed: [_hangmanView _imgName1]];
 _image2.image = [UIImage imageNamed: [_hangmanView _imgName2]];
 _image3.image = [UIImage imageNamed: [_hangmanView _imgName3]];
 _image4.image = [UIImage imageNamed: [_hangmanView _imgName4]];
 //[_hangmanView drawRect: ];
 }
 */

-(void)redrawWindow
{
    [_pokemonView setNeedsDisplay: YES];
}
/*
- (void)windowDidLoad
{
    [super viewDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    _model = [GuessThatPokemonModel sharedModel];
    [_pokemonView setNeedsDisplay];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}*/

@end
