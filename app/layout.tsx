import "@/app/ui/global.css";
import { fredoka } from "@/app/ui/fonts";

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body className={`${fredoka.className} antialiased`}>{children}</body>
    </html>
  );
}
