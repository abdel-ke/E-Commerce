import prismadb from "@/lib/prisma.db";
import CategoryForm from "./components/CategoryForm";

const CategoryPage = async ({ params }: { params: { categoryId: string; storeId: string } }) => {
  const category = await prismadb.category.findUnique({
    where: {
      id: params.categoryId,
    },
  });

  const billboard = await prismadb.billboard.findMany({
    where: {
      storeId: params.storeId,
    },
  });

  return (
    <>
      <div className="flex-col">
        <div className="flex-1 space-y-4 p-8 pt-6">
          <CategoryForm billboards={billboard} initialData={category} />
        </div>
      </div>
    </>
  );
};

export default CategoryPage;
