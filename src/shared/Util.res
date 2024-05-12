open NodeJs

let process = Process.process
let postsDirectory = Path.join([process->Process.cwd, "posts"])

let getAllPostFileNames = () => {
  let allFiles = Fs.readdirSync(postsDirectory)
  let mdxFiles = allFiles->Array.filter(file => file->String.endsWith(".mdx"))
  mdxFiles->Array.map(file => file->String.replace(".mdx", ""))
}

let getContentAndFrontmatter = async fileName => {
  let path = Path.join([postsDirectory, `${fileName}.mdx`])
  let post = Fs.readFileSyncWith(path, {encoding: "utf8"})

  open Unified
  await RSC.compileMDX({
    source: post,
    components: {
      "h1": "h2",
    },
    options: {
      "mdxOptions": {
        "remarkPlugins": [
          remarkGfm,
          remarkMath,
          [remarkToc, {"heading": "목차"}->Obj.magic]->Obj.magic,
        ],
        "rehypePlugins": [
          [rehypePrettyCode, {"theme": "solarized-light"}->Obj.magic],
          [rehypeKaTeX, {"throwOnError": true, "strict": true}->Obj.magic],
        ],
        "format": "mdx",
      },
      "parseFrontmatter": true,
    },
  })
}
