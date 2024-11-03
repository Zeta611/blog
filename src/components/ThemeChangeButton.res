@@directive("'use client';")

@react.component
let make = () => {
  let (mounted, setMounted) = React.useState(() => false)
  let {theme, setTheme} = NextThemes.useTheme()

  React.useEffect(() => {
    setMounted(_ => true)
    None
  }, [])

  let sunIcon =
    <ReactIcons.SunIcon
      className="h-[1.2rem] w-[1.2rem] rotate-0 scale-100 transition-all dark:-rotate-90 dark:scale-0"
    />

  let moonIcon =
    <ReactIcons.MoonIcon
      className="absolute h-[1.2rem] w-[1.2rem] rotate-90 scale-0 transition-all dark:rotate-0 dark:scale-100"
    />

  if !mounted {
    <Button variant="ghost" size="icon">
      {sunIcon}
      {moonIcon}
    </Button>
  } else {
    <Button
      variant="ghost"
      size="icon"
      onClick={_ =>
        setTheme(
          switch theme {
          | Light => Dark
          | Dark => Light
          },
        )}>
      {sunIcon}
      {moonIcon}
    </Button>
  }
}
