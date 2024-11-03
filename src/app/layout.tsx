import { ThemeProvider } from "@/components/theme-provider";
import { make as NavigationBar } from "@/components/NavigationBar.res.js";
import type { Metadata } from "next";
import { Noto_Serif_KR, JetBrains_Mono } from "next/font/google";
import "./globals.css";

const notoSerifKR = Noto_Serif_KR({
  weight: ["600", "400"],
  preload: false,
});

const jetbrainsMono = JetBrains_Mono({
  subsets: ["latin"],
  preload: false,
  variable: "--font-jetbrains-mono",
});

export const metadata: Metadata = {
  title: "프로그래밍의 도를 찾아서",
  description: "프로그래밍이 뭘까?",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body
        className={`${notoSerifKR.className} ${jetbrainsMono.variable} flex flex-col`}
      >
        <ThemeProvider attribute="class" disableTransitionOnChange>
          <NavigationBar />
          <div className="px-6 py-6 max-w-xl mx-auto md:max-w-2xl">
            {children}
          </div>
        </ThemeProvider>
      </body>
    </html>
  );
}
