@@directive("'use client';")

type t = {theme: string, setTheme: string => unit}

@module("next-themes")
external useTheme: unit => t = "useTheme"

@react.component
let make = () => {
  let (mounted, setMounted) = React.useState(() => false)
  let {theme, setTheme} = useTheme()
  React.useEffect(() => {
    setMounted(_ => true)
    None
  }, [])

  if !mounted {
    React.null
  } else {
    <Button
      variant="ghost"
      size="icon"
      onClick={_ => {
        setTheme(
          switch theme {
          | "light" => "dark"
          | _ => "light"
          },
        )
      }}>
      {switch theme {
      | "light" => "🌙"
      | _ => "☀️"
      }->React.string}
    </Button>
  }
}
