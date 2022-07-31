import React, { useContext } from "react";
import { Link, useHistory } from "react-router-dom";
import axios from "../../api/axios";
import AuthContext from "../../context/AuthProvider";
import "./style.css";

const Transaction = ({ CartItem }) => {
	const history = useHistory();
	const CartCheckout = CartItem.filter((product) => product.active === true);

	const totalPrice = CartCheckout.reduce(
		(price, item) => price + item.harga * item.jumlah,
		0
	);
	const { auth } = useContext(AuthContext);
	console.log(CartCheckout);
	const payload = { details: CartCheckout };
	const token = auth.token;
	console.log(auth);
	const handleBayar = async (e) => {
		try {
			const res = await axios.post("/bayar", JSON.stringify(payload), {
				headers: {
					Authorization: `Bearer ${token}`,
					"Content-Type": "application/json",
				},
			});
			console.log(res);
			history.push("/track");
		} catch (error) {
			console.log(error);
		}
	};
	// console.log(JSON.stringify(payload));
	return (
		<>
			<section className="cart-items">
				<div className="container d_flex">
					<div className="cart-details">
						{CartCheckout.length === 0 && (
							<h1 className="no-items product">Checkout</h1>
						)}
						{CartCheckout.map((item) => {
							const productQty = item.harga * item.jumlah;

							return (
								<div className="cart-list product d_flex" key={item.id}>
									<div className="img">
										<img src={item.foto} alt="" />
									</div>
									<div className="cart-details">
										<h3>{item.nama}</h3>
										<h4>
											Rp.{parseInt(item.harga).toLocaleString("id-ID")} x{" "}
											{item.jumlah}
											<span>
												Rp.{parseInt(productQty).toLocaleString("id-ID")}
											</span>
										</h4>
									</div>

									<div className="cart-item-price"></div>
								</div>
							);
						})}
						<div className="cart-list product ">
							<h2>Detail Pengantaran</h2>
							<div className="trans-detail">
								<h3>Nama Pemesan:</h3>
								<h3>{auth.nama}</h3>
							</div>
							<div className="trans-detail">
								<h3>Alamat Pemesan:</h3>
								<h3>{auth.alamat}</h3>
							</div>
						</div>
					</div>
					<div className="trans-total product">
						<h2>Pembayaran</h2>
						<div className=" d_flex">
							<h4>Total Harga :</h4>
							<h3>Rp.{totalPrice}</h3>
						</div>
						<div className=" d_flex">
							<h4>Biaya Ongkir :</h4>
							<h3>Rp.50.000</h3>
						</div>
						<div className=" d_flex">
							<h4>Total Pembayaran :</h4>
							<h3>Rp.{totalPrice + 50000}</h3>
						</div>
						<Link>
							<button className="btn-primary" onClick={handleBayar}>
								Bayar
							</button>
						</Link>
					</div>
				</div>
			</section>
		</>
	);
};

export default Transaction;
