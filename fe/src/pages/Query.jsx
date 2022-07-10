import React from "react";
import Home from "../components/MainPage/Home";
import { useLocation } from "react-router-dom";
// import FlashDeals from "../components/flashDeals/FlashDeals";
// import TopCate from "../components/top/TopCate";
// import NewArrivals from "../components/newarrivals/NewArrivals";
// import Discount from "../components/discount/Discount";
import Shop from "../components/shops/Shop";
// import Annocument from "../components/annocument/Annocument";
import Wrapper from "../components/wrapper/Wrapper";

const Query = ({ productItems, addToCart, shopItems }) => {
	// const param = window.location.search;
	// console.log("param===");
	const location = useLocation();
	console.log(location);
	// console.log("first");
	return (
		<>
			{/* <FlashDeals productItems={productItems} addToCart={addToCart} /> */}
			{/* <TopCate /> */}
			{/* <NewArrivals /> */}
			{/* <Discount /> */}
			<Shop shopItems={shopItems} addToCart={addToCart} />
			{/* <Annocument /> */}
			<Wrapper />
		</>
	);
};

export default Query;
