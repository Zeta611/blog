@react.component
let make = async () => {
  let posts = Util.getAllPostFileNames()

  let data =
    (await posts
    ->Array.map(async fileName => {
      let {frontmatter} = await Util.getContentAndFrontmatter(fileName)
      (fileName, frontmatter)
    })
    ->Promise.all)
    ->Array.toSorted(((_, {key: a}), (_, {key: b})) => String.compare(b, a))

  <div className="flex flex-col gap-7">
    {data
    ->Array.map(((fileName, frontmatter)) => {
      <div key={frontmatter.title} className="flex flex-col gap-1.5">
        // Gap between date and tags
        <div className="flex gap-3 text-xs">
          <div>
            {
              open Date
              frontmatter.key
              ->fromString
              ->toLocaleDateStringWithLocale("ko-KR")
              ->React.string
            }
          </div>
          <div> {frontmatter.tags->Array.join(", ")->React.string} </div>
        </div>
        <a href={`./posts/${fileName}`} className="text-lg font-semibold">
          {frontmatter.title->React.string}
        </a>
        <div className="text-sm"> {frontmatter.excerpt->React.string} </div>
      </div>
    })
    ->React.array}
  </div>
}
