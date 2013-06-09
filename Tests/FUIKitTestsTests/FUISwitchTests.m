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
@property (nonatomic) BOOL controlValueChangedToggle;
@end

@implementation FUISwitchTests

- (void)setUp {
    [super setUp];
    self.fuiSwitch = [[FUISwitch alloc] initWithFrame:CGRectMake(0, 0, 80, 35)];
    self.controlValueChangedToggle = NO;
}

- (void)testSwitchInitializesWithDefaultValues {
    expect(self.fuiSwitch.onLabel.text).to.equal(@"ON");
    expect(self.fuiSwitch.offLabel.text).to.equal(@"OFF");
}

- (void)testSwitchDefaultsOn {
    expect(self.fuiSwitch.isOn).to.beTruthy();
}

- (void)testSetOnChangesValue {
    expect(self.fuiSwitch.isOn).to.beTruthy();
    [self.fuiSwitch setOn:NO animated:NO];
    expect(self.fuiSwitch.isOn).to.beFalsy();
}

- (void)testUIControlEventValueChangedIsCalledWhenSwitchToggles {
    [self.fuiSwitch addTarget:self action:@selector(switchValueChanged) forControlEvents:UIControlEventValueChanged];
    [self.fuiSwitch setOn:NO animated:NO];
    expect(self.controlValueChangedToggle).to.beTruthy();
}

- (void)switchValueChanged {
    self.controlValueChangedToggle = YES;
}

@end
