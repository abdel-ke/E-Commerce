import React from "react";
import BillboardsClient from "./components/Client";
import prismadb from "@/lib/prisma.db";
import { BillboardColumn } from "./components/columns";
import { format } from "date-fns";

const BillboardsPage = async ({params}: {params: {storeId: string}}) => {
  const billboards = await prismadb.billboard.findMany({
  where:{
    storeId: params.storeId
  },
  orderBy: {
    createdAt: 'desc'
  }
  });
  const formatedBillboard: BillboardColumn[] = billboards.map((item)=> ({
    id: item.id,
    label: item.label,
    createdAt: format(item.createdAt, "MMMM do, yyyy")
  }));

  return (
    <div className="flex-col">
      <div className="flex-1 space-y-4 p-8 pt-6">
        <BillboardsClient data={formatedBillboard}/>
      </div>
    </div>
  );
};

export default BillboardsPage;
