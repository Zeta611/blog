type mdxRemoteProps<'a, 'b, 'c> = {source: 'a, options?: 'b, components?: 'c}
type compileMDXResult<'a> = {content: React.element, frontmatter: Frontmatter.t}

@module("next-mdx-remote/rsc")
external compileMDX: mdxRemoteProps<_, _, _> => promise<compileMDXResult<_>> = "compileMDX"
