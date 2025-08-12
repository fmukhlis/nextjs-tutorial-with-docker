import { GlobeAltIcon } from "@heroicons/react/24/outline";
import { luckiestGuy } from "@/app/ui/fonts";

export default function AcmeLogo() {
  return (
    <div
      className={`${luckiestGuy.className} flex flex-row items-center leading-none text-white tracking-widest`}
    >
      <GlobeAltIcon className="h-12 w-12 rotate-[15deg]" />
      <p className="text-[44px]">Acme</p>
    </div>
  );
}
