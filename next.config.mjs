/** @type {import('next').NextConfig} */
const nextConfig = {
  // output: "export",
  pageExtensions: ["mdx", "md", "jsx", "js", "ts", "tsx"],
  reactStrictMode: true,
  async rewrites() {
    return [
      {
        source: "/react-trace/:path*",
        destination: "https://react-trace.vercel.app/:path*",
      },
    ];
  },
};

export default nextConfig;
