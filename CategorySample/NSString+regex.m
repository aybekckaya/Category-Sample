//
//  NSString+regex.m
//  CategorySample
//
//  Created by aybek can kaya on 4/2/14.
//  Copyright (c) 2014 aybek can kaya. All rights reserved.
//

#import "NSString+regex.h"

@implementation NSString (regex)

-(NSRange) SearchIn:(NSString *)Str CompareOptions:(NSStringCompareOptions)Opts
{
    if(Opts == (int)nil)
    {
        Opts=NSCaseInsensitiveSearch;
    }
    
    NSString *myString = Str;
    NSRange rangeValue = [self rangeOfString:myString options:Opts];
    
    if (rangeValue.length > 0){
        
        return rangeValue;
    }
    return NSMakeRange(0, 0);
}

-(BOOL)isMatching:(NSString *)expression
{
    NSString *pattern=expression;
    NSString *string =self;
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSAssert(regex, @"Unable to create regular expression");
    
    NSRange textRange = NSMakeRange(0, string.length);
    NSRange matchRange = [regex rangeOfFirstMatchInString:string options:NSMatchingReportProgress range:textRange];
    
    BOOL didValidate = NO;
    
    // Did we find a matching range
    if (matchRange.location != NSNotFound)
    {
        didValidate = YES;
    }
    
    return didValidate;
}


+(NSString *) randomStringWithLength: (int) len
{
    
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    
    for (int i=0; i<len; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
    }
    
    return randomString;
}


@end
