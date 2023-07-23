import getCategory from "@/actions/get-category";
import getColors from "@/actions/get-colors";
import getProducts from "@/actions/get-products";
import getSizes from "@/actions/get-sizes";
import Billboard from "@/components/Billboard";
import Container from "@/components/ui/Container";
import Filter from "./components/Filter";
import NoResults from "@/components/ui/NoResult";
import ProductCard from "@/components/ui/ProductCard";
import MobilFilters from "./components/MobilFilters";

export const revalidate = 0;

interface CategoryPageProps {
  params: {
    categoryId: string;
  };
  searchParam: {
    colorId: string;
    sizeId: string;
  };
}

const CategoryPage = async ({ params, searchParam }: CategoryPageProps) => {
  const products = await getProducts({
    categoryId: params.categoryId,
    colorId: searchParam?.colorId,
    sizeId: searchParam?.sizeId,
  });
  const sizes = await getSizes();
  const colors = await getColors();
  const category = await getCategory(params.categoryId);
  return (
    <div className="bg-white">
      <Container>
        {/* @ts-ignore */}
        <Billboard data={category.billboard} />
        <div className="px-4 sm:-x6 pb-24">
          <div className="lg:grid lg:grid-cols-5 lg:gap-x-8">
            {/* Add Mobile Fillters */}
			<MobilFilters sizes={sizes} colors={colors}/>
            <div className="hidden lg:block">
              <Filter valueKey="sizeId" name="Sizes" data={sizes} />
              <Filter valueKey="colorId" name="Colors" data={colors} />
            </div>
            <div className="mt-6 lg:col-span-4 lg:mt-0">
              {products.length === 0 && <NoResults />}
              <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
                {products.map((item) => (
                  <ProductCard key={item.id} data={item} />
                ))}
              </div>
            </div>
          </div>
        </div>
      </Container>
    </div>
  );
};

export default CategoryPage;
