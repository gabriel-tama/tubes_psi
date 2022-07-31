import React, { useState, useEffect } from "react";
import Home from "../components/MainPage/Home";
import { useLocation } from "react-router-dom";
// import FlashDeals from "../components/flashDeals/FlashDeals";
// import TopCate from "../components/top/TopCate";
// import NewArrivals from "../components/newarrivals/NewArrivals";
// import Discount from "../components/discount/Discount";
import Shop from "../components/shops/Shop";
// import Annocument from "../components/annocument/Annocument";
import Wrapper from "../components/wrapper/Wrapper";
import axios from "../api/axios";

const Query = ({ productItems, addToCart, shopItems, setShopItems }) => {
	// const param = window.location.search;
	// console.log("param===");
	const [items, setItems] = useState([]);
	const location = useLocation();
	// console.log(location);
	// console.log("first");
	const fetchData = async (e) => {
		try {
			const res = await axios.get("/search");
			setItems(res.data.data);
			console.log(res);
		} catch (error) {
			console.log(error);
		}
	};
	// useEffect(() => {
	// 	fetchData();
	// }, []);

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
