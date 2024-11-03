// Build time generation of names to all of my posts
let generateStaticParams = () => {
  Util.getAllPostFileNames()->Array.map(file => {"name": file})
}

type params = {name: string}

@react.component
let make = async (~params: promise<params>) => {
  let {name} = await params
  let {content, frontmatter} = await Util.getContentAndFrontmatter(name)
  <div className="flex flex-col gap-7">
    <h1 className="text-2xl font-bold"> {frontmatter.title->React.string} </h1>
    <article className="prose dark:prose-invert text-justify max-w-xl mx-auto md:max-w-4xl">
      content
    </article>
  </div>
}
