import { getAllPostFileNames } from "@/shared/Util.bs";

// Ignore unknown files
export const dynamicParams = false;

// Build time generation of names to all of my posts
export function generateStaticParams() {
  return getAllPostFileNames().map((file) => {
    name: file;
  });
}

export { default } from "@/shared/Post.bs";
