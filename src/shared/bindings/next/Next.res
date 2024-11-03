module Link = {
  @module("next/link") @react.component
  external make: (
    ~className: string=?,
    ~href: string,
    ~passHref: bool=?,
    ~legacyBehavior: bool=?,
    ~children: React.element,
  ) => React.element = "default"
}
