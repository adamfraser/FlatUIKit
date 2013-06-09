//
//  FUISwitchTests.m
//  FUIKitTests
//
//  Copyright (c) 2013 Grouper. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "FUISwitch.h"

#define EXP_SHORTHAND YES
#import <Expecta.h>

@interface FUISwitchTests : SenTestCase
@property (strong, nonatomic) FUISwitch *fuiSwitch;
@end

@implementation FUISwitchTests

- (void)setUp {
    [super setUp];
    self.fuiSwitch = [[FUISwitch alloc] initWithFrame:CGRectMake(0, 0, 80, 35)];
}

- (void)testSwitchInitializesWithDefaultValues {
    expect(self.fuiSwitch.onLabel.text).to.equal(@"ON");
    expect(self.fuiSwitch.offLabel.text).to.equal(@"OFF");
}

@end
