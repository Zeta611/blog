import type { Metadata } from "next";
import { Noto_Serif_KR } from "next/font/google";
import "./globals.css";

const notoSerifKR = Noto_Serif_KR({
  weight: ["600", "400"],
  preload: false,
});

export const metadata: Metadata = {
  title: "프로그래밍의 도를 향하여",
  description: "프로그래밍의 도를 아십니까?",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body className={notoSerifKR.className}>{children}</body>
    </html>
  );
}
