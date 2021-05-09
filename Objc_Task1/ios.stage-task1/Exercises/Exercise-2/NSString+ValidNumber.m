#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    NSLog(@"%@", self);
    if (self.length >= 0 && self.length <= 100) {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        NSNumber *number = [formatter numberFromString:self];
        return number;
    } else {
        return false;
    }
}

@end
