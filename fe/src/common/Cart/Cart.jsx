import React, { useState, useEffect, useContext } from "react";
import { Link } from "react-router-dom";
import axios from "../../api/axios";
import AuthContext from "../../context/AuthProvider";
import "./style.css";

const Cart = ({ CartItem, addToCart, decreaseQty, addTrans }) => {
	// const [cartItem, setCartItem] = useState([]);
	// const { auth } = useContext(AuthContext);
	// const token = auth.token; // ganti token user from global context or local storage
	// const fetchCart = async (e) => {
	// 	try {
	// 		const URL = "/keranjang";
	// 		const response = await axios.get(URL, {
	// 			headers: {
	// 				Authorization: `Bearer ${token}`,
	// 			},
	// 		});
	// 		console.log(response);
	// 		setCartItem(response.data.data);
	// 	} catch (error) {
	// 		console.log(error);
	// 	}
	// };
	// useEffect(() => {
	// 	fetchCart();
	// }, [auth.token]);
	console.log(CartItem);
	const totalPrice = CartItem.reduce(
		(price, item) => price + item.harga * item.jumlah,
		0
	);

	return (
		<>
			<section className="cart-items">
				<div className="container d_flex">
					<div className="cart-details">
						{CartItem.length === 0 && (
							<h1 className="no-items product">No Items are add in Cart</h1>
						)}

						{CartItem.map((item) => {
							const productQty = item.harga * item.jumlah;

							return (
								<div className="cart-list product d_flex" key={item.id}>
									<div className="img">
										<img src={item.foto} alt="" />
									</div>
									<div className="cart-details">
										<h3>{item.nama}</h3>
										<h4>
											Rp {parseInt(item.harga).toLocaleString("id-ID")} x (
											{parseInt(item.jumlah)})
											<span>
												Rp {parseInt(productQty).toLocaleString("id-ID")}
											</span>
										</h4>
									</div>
									<div className="cart-items-function">
										<div className="removeCart">
											<button className="removeCart">
												<i className="fa-solid fa-xmark"></i>
											</button>
										</div>
										<div className="cartControl d_flex">
											<button
												className="incCart"
												onClick={() => addToCart(item)}
											>
												<i className="fa-solid fa-plus"></i>
											</button>
											<button
												className="desCart"
												onClick={() => decreaseQty(item)}
											>
												<i className="fa-solid fa-minus"></i>
											</button>
											<label class="switch">
												<input
													type="checkbox"
													// value="1"
													checked={item.active}
													onClick={() => addTrans(item)}
												/>
												<span class="slider_box round__"></span>
											</label>
										</div>
									</div>

									<div className="cart-item-price"></div>
								</div>
							);
						})}
					</div>

					<div className="cart-total product">
						<h2>Cart Summary</h2>
						<div className=" d_flex">
							<h4>Total Price :</h4>
							<h3>Rp.{totalPrice}</h3>
						</div>
						{totalPrice !== 0 ? (
							<Link to="/checkout">
								<button className="btn-primary">Checkout</button>
							</Link>
						) : (
							""
						)}
					</div>
				</div>
			</section>
		</>
	);
};

export default Cart;
