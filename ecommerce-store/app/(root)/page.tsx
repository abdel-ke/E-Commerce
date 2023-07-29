import getBillboard from "@/actions/get-billboard";
import getProducts from "@/actions/get-products";
import Billboard from "@/components/Billboard";
import ProductList from "@/components/ProductList";
import Container from "@/components/ui/Container";
import React from "react";

export const revalidate = 0;
const HomePage = async () => {
  // const billboard = await getBillboard("73b803ed-913f-48b6-b15d-d03753dbef7b");
  const billboard = await getBillboard("a588bd32-2c8f-47c2-9ae8-a5d36da82156");
  const products = await getProducts({ isFeatured: true });
  return (
    <div>
      <Container>
        <div className="space-y-10 pb-10">
          <Billboard data={billboard} />
          <div className="flex flex-col gap-y-8 px-4 sm:px-6 lg:px-8">
            <ProductList title="Featured Products" items={products} />
          </div>
        </div>
      </Container>
    </div>
  );
};

export default HomePage;
