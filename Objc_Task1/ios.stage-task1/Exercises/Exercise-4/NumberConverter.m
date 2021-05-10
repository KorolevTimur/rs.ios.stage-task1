#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSString *string = [number stringValue];
    NSMutableArray *array = [NSMutableArray new];
    
    if ([string characterAtIndex:0] == '-') {
        string = [string substringWithRange:NSMakeRange(1, string.length - 1)];
    }
    for (int i = 0; i < string.length; i++) {
        [array addObject:[NSString stringWithFormat:@"%C", [string characterAtIndex:i]]];
    }
    return [[array reverseObjectEnumerator] allObjects];
}

@end
