// Build time generation of names to all of my posts
let generateStaticParams = () => {
  Util.getAllPostFileNames()->Array.map(file => {"name": file})
}

type params = {name: string}

@react.component
let make = async (~params) => {
  let {content, frontmatter} = await Util.getContentAndFrontmatter(params.name)
  <div className="flex flex-col gap-9 px-6 py-12 max-w-xl mx-auto md:max-w-4xl">
    <div className="text-2xl lg:text-3xl font-bold text-slate-800">
      {"프로그래밍의 도를 향하여"->React.string}
    </div>
    <div className="flex flex-col gap-7">
      <h1 className="text-2xl font-bold text-slate-800"> {frontmatter.title->React.string} </h1>
      <article className="prose dark:prose-invert text-justify max-w-xl mx-auto md:max-w-4xl">
        content
      </article>
    </div>
  </div>
}
