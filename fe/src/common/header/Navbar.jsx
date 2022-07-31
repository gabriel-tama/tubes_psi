import React, { useState, useContext } from "react";
import { Link, useHistory } from "react-router-dom";
import axios from "../../api/axios";
import AuthContext from "../../context/AuthProvider";

const Navbar = ({ CartItem }) => {
	// Toogle Menu
	const history = useHistory();
	const [MobileMenu, setMobileMenu] = useState(false);
	const { auth, setAuth, setTrig } = useContext(AuthContext);
	const payload = { keranjangs: CartItem };
	const handleLogout = async (e) => {
		// console.log("logout");
		console.log(payload);
		try {
			const res = axios.post("/keranjang", payload, {
				headers: {
					Authorization: `Bearer ${auth.token}`,
					"Content-Type": "application/json",
				},
			});
			console.log(res);
			setAuth({});
			setTrig(false);
		} catch (error) {
			console.log(error);
		}
	};
	return (
		<>
			<header className="header">
				<div className="container d_flex">
					{/* <div className='catgrories d_flex'>
            <span class='fa-solid fa-border-all'></span>
            <h4>
              Categories <i className='fa fa-chevron-down'></i>
            </h4>
          </div> */}

					<div className="navlink">
						<ul
							className={
								MobileMenu ? "nav-links-MobileMenu" : "link f_flex capitalize"
							}
							onClick={() => setMobileMenu(false)}
						>
							{/*<ul className='link f_flex uppercase {MobileMenu ? "nav-links-MobileMenu" : "nav-links"} onClick={() => setMobileMenu(false)}'>*/}
							<li>
								<Link to="/">home</Link>
							</li>
							{auth.role !== 2 ? (
								<li>
									<Link to="/cart">Keranjang</Link>
								</li>
							) : (
								<li>
									<Link to="/grafik">Penjualanku</Link>
								</li>
							)}

							<li>
								<Link to="/user">Akun Saya</Link>
							</li>
							{/* <li>
								<Link to="/grafik">Penjualan Saya</Link>
							</li> */}

							<li>
								<Link to="/track">Histori Transaksi</Link>
							</li>
							<li>
								<Link to="/" onClick={handleLogout}>
									Logout
								</Link>
							</li>
						</ul>

						<button
							className="toggle"
							onClick={() => setMobileMenu(!MobileMenu)}
						>
							{MobileMenu ? (
								<i className="fas fa-times close home-btn"></i>
							) : (
								<i className="fas fa-bars open"></i>
							)}
						</button>
					</div>
				</div>
			</header>
		</>
	);
};

export default Navbar;
