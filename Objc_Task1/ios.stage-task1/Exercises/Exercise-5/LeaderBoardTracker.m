#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    NSMutableArray *resultArray = [NSMutableArray new];
    
    if (playerArray.count == 0) {
        return resultArray;
    }
    else if (rankedArray.count == 0) {
        for (NSNumber *item in playerArray) {
            [resultArray addObject: @(1)];
        }
        return resultArray;
    }
    else {
        NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:rankedArray];
        NSArray *arrayWithoutDuplicates = [orderedSet array];
    for (int i = 0; i < playerArray.count; i++) {
        for (int j = 0; j < arrayWithoutDuplicates.count; j++) {
            if ([playerArray[i] compare: arrayWithoutDuplicates[j]] == NSOrderedSame || [playerArray[i] compare: arrayWithoutDuplicates[j]] == NSOrderedDescending) {
                [resultArray addObject: [NSNumber numberWithInt: j + 1]];
                break;
            } else if (j == arrayWithoutDuplicates.count - 1 && [playerArray[i] compare: arrayWithoutDuplicates[j]] == NSOrderedAscending) {
                [resultArray addObject: [NSNumber numberWithInt: j + 2]];
            }
        }
    }
    return resultArray;
    }
}

@end
