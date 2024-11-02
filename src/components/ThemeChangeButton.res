@@directive("'use client';")

type t = {theme: string, setTheme: string => unit}

@module("next-themes")
external useTheme: unit => t = "useTheme"

@react.component
let make = () => {
  let (mounted, setMounted) = React.useState(() => false)
  let {theme, setTheme} = useTheme()
  React.useEffect0(() => {
    setMounted(_ => true)
    None
  })

  if !mounted {
    React.null
  } else {
    <Button
      variant="outline"
      size="icon"
      onClick={_ => {
        setTheme(
          switch theme {
          | "light" => "dark"
          | _ => "light"
          },
        )
      }}>
      <span className="dark:text-slate-200 text-slate-700">
        {switch theme {
        | "light" => "🌙"
        | _ => "☀️"
        }->React.string}
      </span>
    </Button>
  }
}
