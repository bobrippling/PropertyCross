//
//  JSONFIleDataSource.m
//  Property Finder
//
//  Created by Colin Eberhardt on 16/10/2012.
//  Copyright (c) 2012 Colin Eberhardt. All rights reserved.
//

#import "JSONFIleDataSource.h"

@implementation JSONFileDataSource

- (void)findPropertiesForSearchString:(NSString *)searchString
                              success:(JSONDataSourceSuccess)successResult
{
    NSString* filename = [searchString isEqualToString:@"a"] ? @"AmbiguousSearchResults" : @"SearchResults";
    NSString* path = [[NSBundle mainBundle] pathForResource: filename
                                                     ofType: @"txt"];
    NSString* data = [NSString stringWithContentsOfFile: path
                                               encoding: NSUTF8StringEncoding
                                                  error: nil];
    successResult(data);
}

@end
