"use client";

import Heading from "@/components/ui/Heading";
import { Separator } from "@/components/ui/separator";
import React from "react";
import { OrderColumn, columns } from "./columns";
import { DataTable } from "@/components/ui/data-table";

interface BillBoardClientProps {
  data: OrderColumn[];
}

const OrderClient: React.FC<BillBoardClientProps> = ({ data }) => {
  return (
    <>
      <Heading title={`Orders (${data.length})`} description="Manage orders for your store" />
      <Separator />
      <DataTable columns={columns} data={data} searchKey="products" />
    </>
  );
};

export default OrderClient;
