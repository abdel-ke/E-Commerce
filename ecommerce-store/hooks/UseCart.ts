import { Product } from "@/types";
import { toast } from "react-hot-toast";
import { create } from "zustand";

import { persist, createJSONStorage } from "zustand/middleware"

interface CartStore {
	items: Product[],
	addItem: (date: Product) => void,
	removeItem: (id: string) => void,
	removeAll: () => void,
}

const UseCart = create(
	persist<CartStore>((set, get) => ({
		items: [],
		addItem: (data: Product) => {
			const currentItems = get().items;
			const existingItem = currentItems.find((item) => item.id === data.id);

			if (existingItem)
				return (toast.error("Item already in cart."));
			set({ items: [...get().items, data] });
			toast.success("Item added to cart.");
		},
		removeItem: (id: string) => {
			set({ items: [...get().items.filter((item) => item.id !== id)] });
			toast.success("Item removed from the cart");
		},
		removeAll: () => set({ items: [] }),
	}), {
		name: "cart-storage",
		storage: createJSONStorage(() => localStorage)
	})
)

export default UseCart;
