import React, { useContext } from "react";
import { Link } from "react-router-dom";
import axios from "../../api/axios";
import AuthContext from "../../context/AuthProvider";
import "./style.css";

const Transaction = ({ CartItem }) => {
	const totalPrice = CartItem.reduce(
		(price, item) => price + item.harga * item.jumlah,
		0
	);
	const { auth } = useContext(AuthContext);
	const payload = { details: CartItem };

	const handleBayar = async (e) => {
		try {
			const res = await axios.post("/bayar", JSON.stringify(payload), {
				headers: {
					Authorization: `Bearer ${auth.token}`,
					"Content-Type": "application/json",
				},
			});
			console.log(res);
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
						{CartItem.length === 0 && (
							<h1 className="no-items product">Checkout</h1>
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
											Rp.{item.harga} x {item.jumlah}
											<span>Rp.{productQty}</span>
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
							<h4>Total Price :</h4>
							<h3>Rp.{totalPrice}</h3>
						</div>
						<div className=" d_flex">
							<h4>Biaya Ongkir :</h4>
							<h3>Rp.{totalPrice}</h3>
						</div>
						<div className=" d_flex">
							<h4>Total Pembayaran :</h4>
							<h3>Rp.{totalPrice}</h3>
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
