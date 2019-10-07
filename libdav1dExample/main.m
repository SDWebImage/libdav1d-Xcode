//
//  main.m
//  libdav1dExample
//
//  Created by lizhuoli on 2019/10/7.
//  Copyright © 2019 SDWebImage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <libdav1d/libdav1d.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Dav1dSettings dav1dSettings;
        Dav1dContext *dav1dContext;
        dav1d_default_settings(&dav1dSettings);
        dav1d_open(&dav1dContext, &dav1dSettings);
        dav1d_close(&dav1dContext);
        NSLog(@"Hello, World!");
    }
    return 0;
}
