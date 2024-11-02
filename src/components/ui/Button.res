@module("@/components/ui/button") @react.component
external make: (
  ~variant: string=?,
  ~size: string=?,
  ~onClick: JsxEvent.Mouse.t => unit=?,
  ~children: React.element,
) => React.element = "Button"
