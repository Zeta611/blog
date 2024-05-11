type frontmatter = {
  title: string,
  key: Date.t,
  tags: array<string>,
  excerpt: string,
}

let make = async () => {
  let posts = Util.getAllPostFileNames()

  let data =
    (await posts
    ->Array.map(async fileName => {
      let {frontmatter} = await Util.getContentAndFrontmatter(fileName)
      (fileName, (frontmatter: frontmatter))
    })
    ->Promise.all)
    ->Array.toSorted(((_, {key: a}), (_, {key: b})) => Date.compare(b, a))

  <div className="flex flex-col gap-9 px-6 py-12 max-w-xl mx-auto md:max-w-2xl">
    <h1 className="text-3xl font-bold text-slate-800">
      {"프로그래밍의 도를 향하여"->React.string}
    </h1>
    <div className="flex flex-col gap-7">
      {data
      ->Array.map(((fileName, frontmatter)) => {
        <div className="flex flex-col gap-1.5">
          // Gap between date and tags
          <div className="flex gap-3 text-xs">
            <div className="text-slate-600">
              {frontmatter.key
              ->Date.toLocaleDateStringWithLocale("ko-KR")
              ->React.string}
            </div>
            <div className="text-slate-700">
              {frontmatter.tags->Array.join(", ")->React.string}
            </div>
          </div>
          <a href={`./posts/${fileName}`} className="text-lg font-semibold text-slate-700">
            {frontmatter.title->React.string}
          </a>
          <div className="text-sm text-slate-600"> {frontmatter.excerpt->React.string} </div>
        </div>
      })
      ->React.array}
    </div>
  </div>
}

let default = make
