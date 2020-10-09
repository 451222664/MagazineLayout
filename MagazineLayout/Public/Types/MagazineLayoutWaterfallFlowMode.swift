//
//  MagazineLayoutWaterfallFlowMode.swift
//  MagazineLayout
//
//  Created by ronny on 2020/10/9.
//  Copyright © 2020 Airbnb. All rights reserved.
//

import UIKit

public enum MagazineLayoutWaterfallFlowMode {

  /// Fractional width items will take up `1/divisor` of the available width for a given row of
  /// items.
  ///
  /// Use this width mode to create grids of items. Consider using `halfWidth`, `thirdWidth`,
  /// `fourthWidth`, or `fifthWidth`, which are equivalent to using `fractionalWidth` with a
  /// `divisor` of `2`, `3`, `4`, or `5`, respectively.
  ///
  /// Fractional width items respect `contentInset.left` and `contentInset.right`, and are affected
  /// by the horizontal spacing specified for the section in which they're contained. On iOS 11 and
  /// higher, they will also take the safe area insets into account if the collection view's
  /// `contentInsetAdjustmentBehavior` property is set to a value that respects the safe area.
  ///
  /// - Warning: `divisor` must be greater than `0`. Specifying `0` as the `divisor` is a programmer
  /// error and **will result in a runtime crash**.
  case fractionalWidth(divisor: UInt)

  /// Half width items will take up `1/2` of the available width for a given row of items.
  public static var halfWidth: MagazineLayoutWaterfallFlowMode {
    return .fractionalWidth(divisor: 2)
  }

  /// Third width items will take up `1/3` of the available width for a given row of items.
  public static var thirdWidth: MagazineLayoutWaterfallFlowMode {
    return .fractionalWidth(divisor: 3)
  }

}
