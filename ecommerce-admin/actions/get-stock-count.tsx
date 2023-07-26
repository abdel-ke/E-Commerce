import prismadb from "@/lib/prisma.db"

export const getStockCount = async (storeId: string) => {
	const stockCount = prismadb.product.count({
		where: {
			storeId,
			isArchived: false
		}
	});
	return stockCount;
}