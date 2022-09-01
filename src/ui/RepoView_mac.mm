//
//          Copyright (c) 2018, Gittyup authors
//
// This software is licensed under the MIT License. The LICENSE.md file
// describes the conditions under which this software may be distributed.
//
// Author: Kas
//

#include "RepoView.h"
#import <Foundation/NSBundle.h>
#import <Foundation/NSString.h>
#include <QString>
#include <QStringList>

QString RepoView::getDefaultTerminal() {
  NSArray *candidates = [NSArray
      arrayWithObjects:@"com.googlecode.iterm2", @"com.apple.Terminal", nil];

  for (NSString *str in candidates) {
    if ([NSBundle bundleWithIdentifier:str] != nil) {
      return QString("open -b %1 .").arg([str UTF8String]);
    }
  }

  return "";
}