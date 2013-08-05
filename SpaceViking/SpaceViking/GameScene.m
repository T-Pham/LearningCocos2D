//
//  GameScene.m
//  SpaceViking
//
//  Created by eastagile 87:21 on 8/5/13.
//  Copyright (c) 2013 eastagile. All rights reserved.
//

#import "GameScene.h"
#import "cocos2d.h"
#import "BackgroundLayer.h"
#import "GameplayLayer.h"

@implementation GameScene

- (id)init {
    self = [super init];
    if (self) {
        BackgroundLayer *backgroundLayer = [BackgroundLayer node];
        [self addChild:backgroundLayer z:0];
        GameplayLayer *gameplayLayer = [GameplayLayer node];
        [self addChild:gameplayLayer z:5];
    }
    return self;
}

@end
