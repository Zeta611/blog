/** @type {import('next').NextConfig} */
const nextConfig = {
  // output: "export",
  pageExtensions: ["mdx", "md", "jsx", "js", "ts", "tsx"],
  reactStrictMode: true,
  async rewrites() {
    return [
      {
        source: "/react-trace/:path*",
        destination: "https://react-trace.netlify.app/:path*",
      },
      {
        source: "/_next/:path*",
        destination: "https://react-trace.netlify.app/_next/:path*",
      },
    ];
  },
};

export default nextConfig;
