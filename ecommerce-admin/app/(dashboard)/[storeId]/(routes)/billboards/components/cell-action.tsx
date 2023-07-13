'use client'

import { Button } from '@/components/ui/button';

import { Copy, Delete, Edit, MoreHorizontal, Trash } from 'lucide-react';

import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuLabel, DropdownMenuTrigger } from '@/components/ui/dropdown-menu';

import { BillboardColumn } from './columns'

interface CellActionProps {
    data: BillboardColumn;
}

export const CellAction: React.FC<CellActionProps> = ({ data }) => {
    return (
        <>
            <DropdownMenu>
                {/* asChild */}
                <DropdownMenuTrigger >
                    <Button variant={"ghost"} className='h-8 w-8 p-0'>
                        <span className='sr-only'>Open menu</span>
                        <MoreHorizontal className='h-4 w-4' />
                    </Button>
                </DropdownMenuTrigger>
                <DropdownMenuContent align="end">
                    <DropdownMenuLabel className='text-center'>
                        Actions
                    </DropdownMenuLabel>
                    <DropdownMenuItem>
                        <Copy className="mr-2 h-4 w-4" />Copy
                    </DropdownMenuItem>
                    <DropdownMenuItem>
                        <Edit className="mr-2 h-4 w-4" />Update
                    </DropdownMenuItem>
                    <DropdownMenuItem>
                        <Trash className="mr-2 h-4 w-4" />Delete
                    </DropdownMenuItem>
                </DropdownMenuContent>
            </DropdownMenu>
        </>
    )
}
