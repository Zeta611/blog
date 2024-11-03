@module("@/components/ui/navigation-menu")
external navigationMenuTriggerStyle: unit => string = "navigationMenuTriggerStyle"

module NavigationMenu = {
  @module("@/components/ui/navigation-menu") @react.component
  external make: (~className: string=?, ~children: React.element) => React.element =
    "NavigationMenu"
}

module NavigationMenuList = {
  @module("@/components/ui/navigation-menu") @react.component
  external make: (~children: React.element) => React.element = "NavigationMenuList"
}

module NavigationMenuItem = {
  @module("@/components/ui/navigation-menu") @react.component
  external make: (~children: React.element) => React.element = "NavigationMenuItem"
}

module NavigationMenuTrigger = {
  @module("@/components/ui/navigation-menu") @react.component
  external make: (~children: React.element) => React.element = "NavigationMenuTrigger"
}

module NavigationMenuContent = {
  @module("@/components/ui/navigation-menu") @react.component
  external make: (~children: React.element) => React.element = "NavigationMenuContent"
}

module NavigationMenuLink = {
  @module("@/components/ui/navigation-menu") @react.component
  external make: (
    ~className: string=?,
    ~asChild: bool=?,
    ~children: React.element,
  ) => React.element = "NavigationMenuLink"
}
