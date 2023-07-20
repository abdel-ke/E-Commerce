import React from "react";
import Container from "@/components/ui/Container";
import Link from "next/link";
import MainNav from "./Main-nav";
import getCategories from "@/actions/get-categories";
import NavBarActions from "./NavBarActions";

export const revalidated = 0;

const Navbar = async () => {
  const categories = await getCategories();
  return (
    <div className="border-b">
      <Container>
        <div className="relative px-4 sm:px-6 lg:px-8 flex h-16 items-center">
          <Link href="/" className="ml-4 lg:ml-0 grap-x-2">
            <p className="font-bold text-xl">STORE</p>
          </Link>
          <MainNav data={categories}/>
          <NavBarActions/>
        </div>
      </Container>
    </div>
  );
};

export default Navbar;
