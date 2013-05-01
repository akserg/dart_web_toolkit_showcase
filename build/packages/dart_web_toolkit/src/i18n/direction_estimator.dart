//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_i18n;

/**
 * Interface for direction estimators.
 */
abstract class DirectionEstimator {

  /**
   * Estimates the direction of a plain-text string.
   * 
   * @param str The string to check.
   * @return {@code str}'s estimated direction.
   */
  Direction estimateDirection(String str);
  
  /**
   * Estimates the direction of a string.
   *
   * @param str The string to check.
   * @param isHtml Whether {@code str} is HTML / HTML-escaped. {@code false}
   *        means that {@code str} is plain-text.
   * @return {@code str}'s estimated direction.
   */
  Direction estimateStringDirection(String str, [bool isHtml = false]) {
    return estimateDirection(BidiUtils.get().stripHtmlIfNeeded(str, isHtml));
  }

  /**
   * Estimates the direction of a SafeHtml.
   *
   * @param html The string to check.
   * @return {@code html}'s estimated direction.
   */
  Direction estimateSafetmlDirection(SafeHtml html) {
    return estimateDirection(BidiUtils.get().stripHtmlIfNeeded(html.asString(), true));
  }
}
