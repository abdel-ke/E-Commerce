"use client";

import Heading from "@/components/ui/Heading";
import { Button } from "@/components/ui/button";
import { Separator } from "@/components/ui/separator";
import { DataTable } from "@/components/ui/data-table";
import { ApiList } from "@/components/ui/api-list";

import { Plus } from "lucide-react";

import { useParams, useRouter } from "next/navigation";

import { ColorsColumn, columns } from "./columns";

interface ColorClientProps {
  data: ColorsColumn[];
}

const ColorClient: React.FC<ColorClientProps> = ({ data }) => {
  const router = useRouter();
  const params = useParams();
  return (
    <>
      <div className="flex items-center justify-between">
        <Heading title={`Colors (${data.length})`} description="Manage color for your store" />
        <Button onClick={() => router.push(`/${params.storeId}/colors/new`)}>
          <Plus className="mr-2 h-4 w-4" />
          Add new
        </Button>
      </div>
      <Separator />
      <DataTable columns={columns} data={data} searchKey="name" />
      {/* <Heading title="API" description="API calls for Colors" /> */}
      {/* <Separator />s */}
      {/* <ApiList entityIdName="colors" entityName="colorId" /> */}
    </>
  );
};

export default ColorClient;
