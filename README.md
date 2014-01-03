# BRYVarArgs

A nicer syntax for enumerating variable arguments

## Installation

Via [CocoaPods](http://cocoapods.org), of course:

    pod "BRYVarArgs"

## Usage

```objective-c
- (id)initWithCancelButtonTitle:(NSString *)cancelTitle otherButtonTitles:(NSString *)otherButtonTitles, ... {
    if (self = [super init]) {
        NSMutableArray *buttonTitles = [[NSMutableArray alloc] init];
        
        BRYVarArgs(^(NSString *title) {
            [buttonTitles addObject:title];
        }, otherButtonTitles);
    }
 
    return self;
}
```

## License
Available for use under the MIT license: [http://bryan.mit-license.org](http://bryan.mit-license.org)
