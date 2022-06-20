import React, { useState } from "react";
import logo from "../../components/assets/images/logo.svg";
import { Link } from "react-router-dom";
import Login from "../../components/login/Login";
import Popup from "../../components/popup/Popup";
const Search = ({ CartItem }) => {
	const [trig, setTrig] = useState(false);
	// fixed Header
	window.addEventListener("scroll", function () {
		const search = document.querySelector(".search");
		search.classList.toggle("active", window.scrollY > 100);
	});

	return (
		<>
			<section className="search">
				<div className="container c_flex">
					<div className=" logo width ">
						{/* <img src={logo} alt="" /> */}
						<h1>Bajuju</h1>
					</div>

					<div className="search-box f_flex">
						<i className="fa fa-search"></i>
						<input type="text" placeholder="Search and hit enter..." />
						<span>All Category</span>
					</div>

					<div className="icon f_flex width">
						<div className="auth">
							<button onClick={() => setTrig(true)}>
								<i className="fa fa-user icon-circle"></i>
							</button>
						</div>

						<div className="cart">
							<Link to="/cart">
								<i className="fa fa-shopping-bag icon-circle"></i>
								<span>{CartItem.length === 0 ? "" : CartItem.length}</span>
							</Link>
						</div>
					</div>
				</div>
				<Popup trigger={trig} setTrigger={setTrig}></Popup>
			</section>
		</>
	);
};

export default Search;
