import React, { useState, useEffect, useContext } from "react";
import { useLocation } from "react-router-dom";
import axios from "../api/axios";
import Home from "../components/MainPage/Home";
import Shop from "../components/shops/Shop";
import User from "../components/user/User";
import Wrapper from "../components/wrapper/Wrapper";
import AuthContext from "../context/AuthProvider";
import Upload from "../Upload/Upload";

const Pages = ({ productItems, addToCart, CartItem, shopItems }) => {
	const { auth } = useContext(AuthContext);
	// console.log(auth.role === "3");
	useEffect(() => {}, [auth.role]);
	const loading = () => {
		return <h3>Loading...</h3>;
	};
	return shopItems === null ? (
		loading
	) : auth.role !== 2 ? (
		<>
			<Home CartItem={CartItem} />
			<Shop shopItems={shopItems} addToCart={addToCart} />
			<Wrapper />
		</>
	) : (
		<>
			<Shop shopItems={shopItems} addToCart={addToCart} />
			<Upload />
		</>
	);
};

export default Pages;
