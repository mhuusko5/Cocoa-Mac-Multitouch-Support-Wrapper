//
//  M5MultitouchListenerInternal.h
//  M5MultitouchSupport
//
//  Created by Mathew Huusko V.
//  Copyright (c) 2015 Mathew Huusko V. All rights reserved.
//

#import "M5MultitouchListener.h"

#import "M5MultitouchEventInternal.h"

@interface M5MultitouchListener ()

#pragma mark - M5MultitouchListener (Internal) -

#pragma mark Methods

- (instancetype)initWithCallback:(M5MultitouchEventCallback)callback;
- (instancetype)initWithTarget:(id)target selector:(SEL)selector;
- (void)listenToEvent:(M5MultitouchEvent *)event;

#pragma mark Properties

- (BOOL)alive;

#pragma mark -

@end
