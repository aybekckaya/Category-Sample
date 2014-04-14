//
//  NSString+regex.h
//  CategorySample
//
//  Created by aybek can kaya on 4/2/14.
//  Copyright (c) 2014 aybek can kaya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (regex)

/*
    @ stringimizin icerisinde Str ile verilen stringi arar. Eger bulursa bulundugu yerin indexini verir . Bulamazsa 0,0 range dondurur.
 */
-(NSRange) SearchIn:(NSString *)Str CompareOptions:(NSStringCompareOptions)Opts;

/*
    @ expression icerisinde yazilan duzenli ifade stringimiz ile uyum sagliyor mu 
 */
-(BOOL)isMatching:(NSString *)expression;

// taken from :  http://stackoverflow.com/a/2633948/3477746
+(NSString *) randomStringWithLength: (int) len;

@end
