import React, { useState } from "react";
import Catg from "./Catg";
import ShopCart from "./ShopCart";
import "./style.css";

const Shop = ({ addToCart, shopItems }) => {
	const [noElements, setNoElements] = useState(3);
	const loadMore = () => {
		setNoElements(noElements + 3);
	};
	const slicedShopItems = shopItems.slice(0, noElements);
	return (
		<>
			<section className="shop background">
				<div className="container d_flex">
					{/* <Catg /> */}

					<div className="contentWidth">
						<div className="heading d_flex">
							<div className="heading-left row  f_flex">
								<h2>Baju Terbaru</h2>
							</div>
						</div>
						<div className="product-content  grid1">
							<ShopCart addToCart={addToCart} shopItems={slicedShopItems} />
						</div>
						<div className="showMore">
							<button className="showMore-btn" onClick={loadMore}>
								Tampilkan Lebih Banyak
							</button>
						</div>
					</div>
				</div>
			</section>
		</>
	);
};

export default Shop;
