//
//  LSIContactController.m
//  ContactsMRC
//
//  Created by Kelson Hartle on 7/31/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import "LSIContactController.h"
#import "LSIContact.h"

@interface LSIContactController ()

@property (nonatomic, readwrite, retain) NSMutableArray<LSIContact *> *internalContacts;

@end

@implementation LSIContactController

-(instancetype)init {
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray<LSIContact *> *)contacts {
    
    return [[_internalContacts copy]autorelease];
}

- (void)addContact:(LSIContact *)contact {
    [self.internalContacts addObject:contact];
}

- (void)updateContact:(LSIContact *)contact withName:(NSString *)name email:(NSString *)email phone:(NSString *)phone {
    
    contact.name = name;
    contact.email = email;
    contact.phonenumber = phone;
    
}

- (void)dealloc
{
    [_contacts release];
    [_internalContacts release];
    [super dealloc];
}


@end
