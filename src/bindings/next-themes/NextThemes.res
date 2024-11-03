type theme =
  | @as("light") Light
  | @as("dark") Dark

type t = {theme: theme, setTheme: theme => unit}

@module("next-themes")
external useTheme: unit => t = "useTheme"
