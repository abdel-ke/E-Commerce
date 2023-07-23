import { NextResponse } from "next/server"

const corsHeaders = {
	"Access-Control-Allow-Origin": "*",
	"Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS",
	"Access-Control-Allow-Headers": "Content-Type, Authorization",
}

export async function OPTIONS() {
	return NextResponse.json({}, {headers: corsHeaders})
};

export async function POST(req: Request, {params}: {params: {storeId: string}}){
	const {productIds} = await req.json();

	if (!productIds || productIds.length === 0)
		return new NextResponse("Product ids are required", {status: 400});
	
		
}