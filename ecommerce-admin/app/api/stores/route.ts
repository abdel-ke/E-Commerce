import prismadb from "@/lib/prisma.db";
import { auth } from "@clerk/nextjs";
import { NextResponse } from "next/server";


export async function GET() {
	try {
		const store = await prismadb.store.findMany();
		return NextResponse.json(store , { status: 200 });
	} catch (error) {
		console.log('[STORES_POST]', error);
		return new NextResponse("Interal error", { status: 500 });
	}
}

export async function POST(req: Request) {
	try {
		const { userId } = auth();
		const { name } = await req.json();

		if (!userId) return new NextResponse("Unauthorized", { status: 401 });
		if (!name) return new NextResponse("Name is required", { status: 400 });
		const store = await prismadb.store.create({
			data: {
				name,
				userId,
			}
		});
		return NextResponse.json(store , { status: 201 });
	} catch (error) {
		console.log('[STORES_POST]', error);
		return new NextResponse("Interal error", { status: 500 });
	}
}
