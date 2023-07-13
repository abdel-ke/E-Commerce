import prismadb from "@/lib/prisma.db";
import { auth } from "@clerk/nextjs";
import { Store } from "lucide-react";
import { redirect } from "next/navigation";
import React from "react";

interface DashboardPageProps {
  params: { storeId: string };
}

const DashboardPage: React.FC<DashboardPageProps> = async ({ params }) => {
  const { userId } = auth();
  if (!userId) redirect("/sign-in");
  const store = await prismadb.store.findFirst({
    where: {
      id: params.storeId
    },
  });
  return <div>Active Store: {store?.name}</div>;
};

export default DashboardPage;
