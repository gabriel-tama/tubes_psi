import React, { useEffect, useState, useContext } from "react";
import "./App.css";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import Header from "./common/header/Header";
import Pages from "./pages/Pages";
import Data from "./components/Data";
import Cart from "./common/Cart/Cart";
import Footer from "./common/footer/Footer";
import Sdata from "./components/shops/Sdata";
import Protected from "./components/protected/Protected";
import User from "./components/user/User";
import Login from "./components/login/Login";
import Transaction from "./components/transaction/Transaction";
import AuthContext from "./context/AuthProvider";
import Query from "./pages/Query";
import TList from "./TList/TList";
import axios from "./api/axios";

function App() {
	const [isLoggedIn, setIsLoggedIn] = useState(true);
	const [shopItems, setshopItems] = useState([]);
	const [CartItem, setCartItem] = useState([]);
	const [CartCheckout, setCartCheckout] = useState([]);
	const { auth } = useContext(AuthContext);

	const fetchData = async () => {
		try {
			const res = await axios.get("/barang");
			setshopItems(res.data.data);
		} catch (error) {
			console.log(error);
		}
	};
	const fetchCart = async (e) => {
		try {
			const URL = "/keranjang";
			const response = await axios.get(URL, {
				headers: {
					Authorization: `Bearer ${auth.token}`,
				},
			});
			console.log(response);
			setCartItem(response.data.data);
			console.log(CartItem);
		} catch (error) {
			console.log(error);
		}
	};
	const { productItems } = Data;
	// const { shopItems } = Sdata;

	useEffect(() => {
		fetchData();
		if (auth.token !== null) {
			fetchCart();
		}
	}, [auth.token]);

	const addTrans = (product) => {
		const productExit = CartCheckout.find((item) => item.id === product.id);
		if (productExit) {
			setCartCheckout(CartCheckout.filter((item) => item.id !== product.id));
		} else {
			console.log(product);
			setCartCheckout((CartCheckout) => [...CartCheckout, product]);
		}
		console.log(CartCheckout);
	};

	const addToCart = (product) => {
		const productExit = CartItem.find((item) => item.id === product.id);
		if (productExit) {
			setCartItem(
				CartItem.map((item) =>
					item.id === product.id
						? { ...productExit, jumlah: productExit.jumlah + 1 }
						: item
				)
			);
		} else {
			setCartItem([...CartItem, { ...product, jumlah: 1 }]);
			console.log(CartItem);
		}
	};

	const decreaseQty = (product) => {
		const productExit = CartItem.find((item) => item.id === product.id);

		if (productExit.jumlah === 1) {
			setCartItem(CartItem.filter((item) => item.id !== product.id));
		} else {
			setCartItem(
				CartItem.map((item) =>
					item.id === product.id
						? { ...productExit, jumlah: productExit.jumlah - 1 }
						: item
				)
			);
		}
	};
	// const [srch, setSearch] = useState("");
	// const { auth } = useContext(AuthContext);
	// console.log(auth.role);
	console.log(CartItem);
	return (
		<>
			<Router>
				<Header CartItem={CartItem} />
				<Switch>
					<Route path="/barang"></Route>
					<Route path="/cart">
						<Protected isLoggedIn={isLoggedIn}>
							<Cart
								CartItem={CartItem}
								addToCart={addToCart}
								decreaseQty={decreaseQty}
								addTrans={addTrans}
							/>
						</Protected>
					</Route>
					<Route path="/vendor">
						<Login />
					</Route>
					<Route path="/user">
						<User />
					</Route>
					<Route path="/checkout">
						<Transaction
							CartItem={CartCheckout}
							addToCart={addToCart}
							decreaseQty={decreaseQty}
						/>
					</Route>
					<Route path="/track">
						<TList />
					</Route>
					<Route path="/result">
						<Query
							productItems={productItems}
							addToCart={addToCart}
							shopItems={shopItems}
						/>
					</Route>
					<Route path="/" exact>
						<Pages
							productItems={productItems}
							addToCart={addToCart}
							shopItems={shopItems}
						/>
					</Route>
				</Switch>
				<Footer />
			</Router>
		</>
	);
}

export default App;
