#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    NSArray *sortedArray = [self sortedArrayUsingSelector:@selector(compare:)];
    return sortedArray.firstObject;
}

@end
