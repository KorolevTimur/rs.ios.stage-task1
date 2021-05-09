#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSString *string = [number stringValue];
    if ([string characterAtIndex:0] == '-') {
        string = [string substringWithRange:NSMakeRange(1, string.length - 1)];
    }
    NSMutableArray *array = [NSMutableArray new];
    for (int i = 0; i < string.length; i++) {
        [array addObject:[NSString stringWithFormat:@"%C", [string characterAtIndex:i]]];
    }
    return [[array reverseObjectEnumerator] allObjects];
}

@end
