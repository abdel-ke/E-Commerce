import prismadb from "@/lib/prisma.db"

export const getSalesCount = async (storeId: string) => {
	const salesCount = prismadb.order.count({
		where: {
			storeId,
			isPaid: true,
		}
	});
	return salesCount;
}