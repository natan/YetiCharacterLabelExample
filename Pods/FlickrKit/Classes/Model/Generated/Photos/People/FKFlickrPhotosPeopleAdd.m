//
//  FKFlickrPhotosPeopleAdd.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosPeopleAdd.h" 

@implementation FKFlickrPhotosPeopleAdd

- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 1;
}

- (NSString *) name {
    return @"flickr.photos.people.add";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
	}
	if(!self.user_id) {
		valid = NO;
		[errorDescription appendString:@"'user_id', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.photo_id) {
		[args setValue:self.photo_id forKey:@"photo_id"];
	}
	if(self.user_id) {
		[args setValue:self.user_id forKey:@"user_id"];
	}
	if(self.person_x) {
		[args setValue:self.person_x forKey:@"person_x"];
	}
	if(self.person_y) {
		[args setValue:self.person_y forKey:@"person_y"];
	}
	if(self.person_w) {
		[args setValue:self.person_w forKey:@"person_w"];
	}
	if(self.person_h) {
		[args setValue:self.person_h forKey:@"person_h"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosPeopleAddError_PersonNotFound:
			return @"Person not found";
		case FKFlickrPhotosPeopleAddError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrPhotosPeopleAddError_UserCannotAddThisPersonToPhotos:
			return @"User cannot add this person to photos";
		case FKFlickrPhotosPeopleAddError_UserCannotAddPeopleToThatPhoto:
			return @"User cannot add people to that photo";
		case FKFlickrPhotosPeopleAddError_PersonCantBeTaggedInThatPhoto:
			return @"Person can't be tagged in that photo";
		case FKFlickrPhotosPeopleAddError_SomeCoordinateParamtersWereBlank:
			return @"Some co-ordinate paramters were blank";
		case FKFlickrPhotosPeopleAddError_CantAddThatPersonToANonpublicPhoto:
			return @"Can't add that person to a non-public photo";
		case FKFlickrPhotosPeopleAddError_TooManyPeopleInThatPhoto:
			return @"Too many people in that photo";
		case FKFlickrPhotosPeopleAddError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosPeopleAddError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosPeopleAddError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosPeopleAddError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosPeopleAddError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosPeopleAddError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosPeopleAddError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosPeopleAddError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosPeopleAddError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosPeopleAddError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosPeopleAddError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
