import React, { useState, useContext, useEffect } from "react";
import logo from "../../components/assets/images/logo.svg";
import { Link } from "react-router-dom";
import Popup from "../../components/popup/Popup";
import AuthContext from "../../context/AuthProvider";
const Search = ({ CartItem }) => {
	const [search, setSearch] = useState("");
	// fixed Header
	window.addEventListener("scroll", function () {
		const search = document.querySelector(".search");
		search.classList.toggle("active", window.scrollY > 100);
	});
	const { auth } = useContext(AuthContext);
	const { setTrig } = useContext(AuthContext);
	// console.log("object");
	function isEmpty(obj) {
		for (var x in obj) {
			return false;
		}
		return true;
	}
	const handleTrigger = () => {
		if (isEmpty(auth)) {
			setTrig(true);
		}
	};
	// let search = "";

	const handleSearch = (e) => {
		e.preventDefault();
		setSearch(e.target.value);
		// search = e.target.value;
		// console.log(search);
	};

	const handleSubmit = async (e) => {
		e.preventDefault();
		console.log(search);
	};
	// useEffect(() => {}, [auth.role]);

	return (
		<>
			<section className="search">
				<div className="container c_flex">
					<div className=" logo width ">
						{/* <img src={logo} alt="" /> */}
						<h1>Bajuju</h1>
					</div>

					<div className="search-box f_flex">
						<Link to={`/result/?q=${search}`} onClick={handleSubmit}>
							<i className="fa fa-search"></i>
						</Link>

						<input
							type="text"
							placeholder="Search and hit enter..."
							onChange={handleSearch}
						/>
						<span>All Category</span>
					</div>

					<div className="icon f_flex width">
						<div className="auth">
							<button onClick={handleTrigger}>
								<i className="fa fa-user icon-circle"></i>
							</button>
						</div>

						<div className="cart">
							{auth.role !== 2 ? (
								<Link to="/cart" onClick={handleTrigger}>
									<i className="fa fa-shopping-bag icon-circle"></i>
									<span>{CartItem.length === 0 ? "" : CartItem.length}</span>
								</Link>
							) : (
								""
							)}
						</div>
					</div>
				</div>
				<Popup></Popup>
			</section>
		</>
	);
};

export default Search;
