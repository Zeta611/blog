import { getAllPostFileNames } from "@/shared/Util.res.js";

// Ignore unknown files
// Comment out the following line: https://github.com/vercel/next.js/issues/56253
// export const dynamicParams = false;

// Build time generation of names to all of my posts
export function generateStaticParams() {
  return getAllPostFileNames().map((file) => ({
    name: file,
  }));
}

export { default } from "@/shared/Post.res.js";
