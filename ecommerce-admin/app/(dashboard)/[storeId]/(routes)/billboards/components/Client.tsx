"use client";

import Heading from "@/components/ui/Heading";
import { Button } from "@/components/ui/button";
import { Separator } from "@/components/ui/separator";
import { Plus } from "lucide-react";
import { useParams, useRouter } from "next/navigation";
import React from "react";
import { BillboardColumn, columns } from "./columns";
import { DataTable } from "@/components/ui/data-table";

interface BillBoardClientProps {
  data: BillboardColumn[]
}

const BillboardsClient: React.FC<BillBoardClientProps> = ({data}) => {
	const router = useRouter();
	const params = useParams();
  return (
    <>
      <div className="flex items-center justify-between">
        <Heading title={`Billboards (${data.length})`} description="Manage billboards for your store" />
        <Button onClick={() => router.push(`/${params.storeId}/billboards/new`)}>
          <Plus className="mr-2 h-4 w-4" />
          Add new
        </Button>
      </div>
	  <Separator />
    <DataTable columns={columns} data={data} searchKey="label"/>
    </>
  );
};

export default BillboardsClient;
