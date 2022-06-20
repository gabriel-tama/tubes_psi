import { useState } from "react";
import { useHistory } from "react-router-dom";
import "./login.css";
import axios from "../../api/axios";
const Login = ({ trigger, setTrigger }) => {
	const [login, setLogin] = useState(true);
	const [email, setEmail] = useState("");
	const [pwd, setPwd] = useState("");
	const [ok, setOk] = useState("false");
	let history = useHistory();
	const LOGIN_URL = "/login";
	const handleSubmit = async (e) => {
		e.preventDefault();
		console.log(email);
		console.log(pwd);
		// setOk(true);
		// console.log(trigger);
		try {
			const response = await axios.post(
				LOGIN_URL,
				JSON.stringify({ email: email, password: pwd }),
				{
					headers: { "Content-Type": "application/json" },
				}
			);
			console.log(response.data.data.user.name);
		} catch (error) {
			console.log(error);
		}
	};
	return login ? (
		<>
			<form onSubmit={handleSubmit}>
				<h1>Sign In</h1>
				<div className="mb-3">
					<label>Email address</label>
					<input
						type="email"
						className="form-control"
						placeholder="Enter email"
						onChange={(e) => {
							setEmail(e.target.value);
						}}
					/>
				</div>
				<div className="mb-3">
					<label>Password</label>
					<input
						type="password"
						className="form-control"
						placeholder="Enter password"
						onChange={(e) => {
							setPwd(e.target.value);
						}}
					/>
				</div>
				<div className="d-grid">
					<button type="submit" className="btn btn-primary">
						Submit
					</button>
				</div>
			</form>
			<p className="forgot-password text-right">
				<button onClick={() => setLogin(!login)}>Belum Mendaftar ?</button>
			</p>
		</>
	) : (
		<>
			<form>
				<h1>Sign Up</h1>
				<div className="mb-3">
					<label>Nama Lengkap</label>
					<input
						type="email"
						className="form-control"
						placeholder="Enter email"
					/>
				</div>
				<div className="mb-3">
					<label>Email address</label>
					<input
						type="email"
						className="form-control"
						placeholder="Enter email"
					/>
				</div>
				<div className="mb-3">
					<label>Alamat</label>
					<input
						type="email"
						className="form-control"
						placeholder="Enter email"
					/>
				</div>
				<div className="mb-3">
					<label>Tipe Akun</label>
					<br />
					<div className="radio-in">
						<input type="radio" name="role" />
						<label htmlFor="type3">Penjual</label>
					</div>
					<div className="radio-in">
						<input type="radio" name="role" />
						<label htmlFor="type2">Pembeli</label>
					</div>
				</div>
				<div className="mb-3">
					<label>Password</label>
					<input
						type="password"
						className="form-control"
						placeholder="Enter password"
					/>
				</div>
				<div className="d-grid">
					<button type="submit" className="btn btn-primary">
						Submit
					</button>
				</div>
			</form>
			<p className="forgot-password text-right">
				<button onClick={() => setLogin(!login)}>Sudah Mendaftar ?</button>
			</p>
		</>
	);
};

export default Login;
