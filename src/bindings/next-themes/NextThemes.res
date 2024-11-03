type t = {theme: string, setTheme: string => unit}

@module("next-themes")
external useTheme: unit => t = "useTheme"
