@@directive("'use client';")

@react.component
let make = () => {
  let (mounted, setMounted) = React.useState(() => false)
  let {theme, setTheme} = NextThemes.useTheme()

  React.useEffect(() => {
    setMounted(_ => true)
    None
  }, [])

  if !mounted {
    <Button variant="ghost" size="icon"> {"🌙"->React.string} </Button>
  } else {
    <Button
      variant="ghost"
      size="icon"
      onClick={_ => {
        setTheme(
          switch theme {
          | Light => Dark
          | Dark => Light
          },
        )
      }}>
      {switch theme {
      | Light => "🌙"
      | Dark => "☀️"
      }->React.string}
    </Button>
  }
}
