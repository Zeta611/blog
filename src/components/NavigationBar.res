open NavigationMenu

module ListItem = {
  @react.component
  let make = (~title: string, ~href: string) => {
    <Next.Link href passHref=true legacyBehavior=true>
      <NavigationMenuLink className={navigationMenuTriggerStyle()}>
        {title->React.string}
      </NavigationMenuLink>
    </Next.Link>
  }
}
@react.component
let make = () => {
  <div className="flex justify-between items-end">
    // Title
    <Next.Link href="/" className="text-lg sm:text-2xl lg:text-3xl font-bold">
      {"Seeking\u00A0the\u00A0Tao\u00A0of"->React.string}
      <br />
      {"Programming"->React.string}
    </Next.Link>
    // Menus
    <NavigationMenu className="flex">
      <NavigationMenuList>
        <NavigationMenuItem>
          <ListItem href="/posts" title="Posts" />
        </NavigationMenuItem>
        <NavigationMenuItem>
          <ListItem href="/about" title="About" />
        </NavigationMenuItem>
      </NavigationMenuList>
      <ThemeChangeButton />
    </NavigationMenu>
  </div>
}
