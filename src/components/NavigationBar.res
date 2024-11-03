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
  <div
    className="sticky top-0 border-b border-stone-500 bg-background/80 backdrop-blur-lg py-2 mt-10">
    <div className="flex justify-between items-end max-w-xl mx-auto md:max-w-2xl">
      // Title
      <Next.Link href="/" className="text-lg sm:text-2xl lg:text-3xl px-6 font-bold">
        {"Seeking\u00A0the\u00A0Tao\u00A0of"->React.string}
        <br />
        {"Programming"->React.string}
      </Next.Link>
      <div className="flex gap-2">
        // Menus
        <NavigationMenu>
          <NavigationMenuList>
            <NavigationMenuItem>
              <ListItem href="/posts" title="Posts" />
            </NavigationMenuItem>
            <NavigationMenuItem>
              <ListItem href="/about" title="About" />
            </NavigationMenuItem>
          </NavigationMenuList>
        </NavigationMenu>
        // Theme
        <ThemeChangeButton />
      </div>
    </div>
  </div>
}
