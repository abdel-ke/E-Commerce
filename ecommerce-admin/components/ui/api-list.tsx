'use client'

import UseOrigin from "@/hooks/use-origin"
import { useParams } from "next/navigation"
import ApiAlert from "./api-alert"

interface ApiListProps {
    entityName: string
    entityIdName: string
}
export const ApiList: React.FC<ApiListProps> = ({ entityIdName, entityName }) => {
    const params = useParams();
    const origin = UseOrigin();

    const baseUrl = `${origin}/api/${params.storeId}`;

    return (
        <>
            <ApiAlert
                title="GET"
                variant="public"
                description={`${baseUrl}/${entityIdName}`}
            />
            <ApiAlert
                title="GET"
                variant="public"
                description={`${baseUrl}/${entityIdName}/{${entityName}}`}
            />
            <ApiAlert
                title="POST"
                variant="admin"
                description={`${baseUrl}/${entityIdName}`}
            />
            <ApiAlert
                title="PATCH"
                variant="admin"
                description={`${baseUrl}/${entityIdName}/{${entityName}}`}
            />
            <ApiAlert
                title="DELETE "
                variant="admin"
                description={`${baseUrl}/${entityIdName}/{${entityName}}`}
            />
        </>
    )
}