//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_util;

/**
 * An object that implements this interface encapsulates HTML that is guaranteed
 * to be safe to use (with respect to potential Cross-Site-Scripting
 * vulnerabilities) in an HTML context.
 *
 * <p>
 * Note on usage: SafeHtml should be used to ensure user input is not executed
 * in the browser. SafeHtml should not be used to sanitize input before sending
 * it to the server: The server cannot rely on the type contract of SafeHtml
 * values received from clients, because a malicious client could provide
 * maliciously crafted serialized forms of implementations of this type that
 * violate the type contract.
 *
 * <p>
 * All implementing classes must maintain the class invariant (by design and
 * implementation and/or convention of use), that invoking {@link #asString()}
 * on any instance will return a string that is safe to assign to the {@code
 * .innerHTML} DOM property in a browser (or to use similarly in an "inner HTML"
 * context), in the sense that doing so must not cause execution of script in
 * the browser.
 *
 * <p>
 * Furthermore, values of this type must be composable, i.e. for any two values
 * {@code A} and {@code B} of this type, {@code A.asString() + B.asString()}
 * must itself be a value that satisfies the SafeHtml type constraint. This
 * requirement implies that for any value {@code A} of this type, if {@code
 * A.asString()} includes HTML markup, the string must end in an "inner HTML"
 * context and not inside a tag or attribute. For example, a value of {@code
 * <div style="} or {@code <img src="} would not satisfy the SafeHtml contract.
 * This is because concatenating such strings with a second value that itself
 * does not contain script-executing HTML markup can result in an overall string
 * that does. For example, if {@code javascript:malicious()">} is appended to
 * {@code <img src="}, the resulting string may result in script execution.
 *
 * <p>
 * All implementations must implement equals() and hashCode() to behave
 * consistently with the result of asString().equals() and asString.hashCode().
 *
 * <p>
 * Implementations must not return {@code null} from {@link #asString()}.
 */
abstract class SafeHtml {
  /*
   * Notes regarding serialization:
   *
   * - It may be reasonable to allow deserialization on the client of objects
   * serialized on the server (i.e. RPC responses), based on the assumption that
   * server code is trusted and would not provide a malicious serialized form
   * (if a MitM were able to modify server responses, the client would be fully
   * compromised in any case). However, the GWT RPC framework currently does not
   * seem to provide a facility for restricting deserialization on the Server
   * only (though this shouldn't be difficult to implement through a custom
   * SerializationPolicy)
   *
   * - Some implementations of SafeHtml would in principle be able to enforce
   * their class invariant on deserialization (e.g., SimpleHtmlSanitizer could
   * apply HTML sanitization on deserialization). However, the GWT RPC framework
   * does not provide for an equivalent of readResolve() to enforce the class
   * invariant on deserialization.
   */

  /**
   * Returns this object's contained HTML as a string.
   *
   * <p>
   * Based on this class' contract, the returned value will be non-null and a
   * string that is safe to use in an HTML context.
   *
   * @return the contents as a String
   */
  String asString();

  /**
   * Compares this string to the specified object.
   * Must be equal to asString().equals().
   *
   * @param anObject the object to compare to
   */
  bool operator ==(Object obj);

  /**
   * Returns a hash code for this string.
   * Must be equal to asString().hashCode().
   */
  int get hashCode;
}
