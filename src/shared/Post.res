type params = {name: string}
type props = {params: params}

type frontmatter = {
  title: string,
  key: Date.t,
  tags: array<string>,
  excerpt: string,
}

let make = async props => {
  let {content, frontmatter} = await Util.getContentAndFrontmatter(props.params.name)
  <div className="flex flex-col gap-9 px-6 py-12 max-w-xl mx-auto md:max-w-4xl">
    <div className="text-3xl font-bold text-slate-800">
      {"프로그래밍의 도를 향하여"->React.string}
    </div>
    <div className="flex flex-col gap-7">
      <h1 className="text-2xl font-bold text-slate-800">
        {(frontmatter: frontmatter).title->React.string}
      </h1>
      <article className="prose dark:prose-invert text-justify max-w-xl mx-auto md:max-w-4xl">
        content
      </article>
    </div>
  </div>
}

let default = make
