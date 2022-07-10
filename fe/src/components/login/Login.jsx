import { useState, useContext } from "react";
import { useHistory } from "react-router-dom";
import "./login.css";
import axios from "../../api/axios";
import AuthContext from "../../context/AuthProvider";
const Login = () => {
	const { setTrig, setAuth } = useContext(AuthContext);
	const [login, setLogin] = useState(true);
	const [email, setEmail] = useState("");
	const [nama, setNama] = useState("");
	const [alamat, setAlamat] = useState("");
	const [role, setRole] = useState(null);
	const [pwd, setPwd] = useState("");
	const [ok, setOk] = useState("false");
	let history = useHistory();
	const setContext = (id, nama, token, role, alamat) => {
		setAuth({ id, nama, token, role, alamat });
	};

	const LOGIN_URL = "/login";
	const REG_URL = "/register";
	const handleSubmit = async (e) => {
		e.preventDefault();
		console.log(email);
		console.log(pwd);
		// setOk(true);
		// console.log(trigger);
		if (login === false) {
			console.log(role);
			try {
				const response = await axios.post(
					REG_URL,
					JSON.stringify({
						name: nama,
						email: email,
						alamat: alamat,
						password: pwd,
						password_confirmation: pwd,
						role: role,
					}),
					{
						headers: { "Content-Type": "application/json" },
					}
				);
				console.log(response);
				setContext(
					response.data.data.user.id,
					response.data.data.user.name,
					response.data.data.token,
					response.data.data.user.role,
					response.data.data.user.alamat
				);
				localStorage.setItem("user", response.data.data.user.name);
				localStorage.setItem("token", response.data.data.token);
				localStorage.setItem("role", response.data.data.user.role);
				setOk(true);
			} catch (error) {
				console.log(error);
			}
		} else {
			try {
				const response = await axios.post(
					LOGIN_URL,
					JSON.stringify({ email: email, password: pwd }),
					{
						headers: { "Content-Type": "application/json" },
					}
				);
				console.log(response.data.data.user.name);
				setContext(
					response.data.data.user.name,
					response.data.data.token,
					response.data.data.user.role
				);
				localStorage.setItem("user", response.data.data.user.name);
				localStorage.setItem("token", response.data.data.token);
				localStorage.setItem("role", response.data.data.user.role);
				setOk(true);
			} catch (error) {
				console.log(error);
			}
		}
		if (ok) {
			// setAuth({response})
			setTrig(false);
			history.push("/");
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
			<form onSubmit={handleSubmit}>
				<h1>Sign Up</h1>
				<div className="mb-3">
					<label>Nama Lengkap</label>
					<input
						// type=""
						className="form-control"
						placeholder="Enter email"
						onChange={(e) => {
							setNama(e.target.value);
						}}
					/>
				</div>
				<div className="mb-3">
					<label>Email address</label>
					<input
						type="email"
						className="form-control"
						placeholder="Enter email"
						onChange={(e) => setEmail(e.target.value)}
					/>
				</div>
				<div className="mb-3">
					<label>Alamat</label>
					<input
						className="form-control"
						placeholder="Enter email"
						onChange={(e) => setAlamat(e.target.value)}
					/>
				</div>
				<div className="mb-3" onChange={(e) => setRole(e.target.value)}>
					<label>Tipe Akun</label>
					<br />
					<div className="radio-in">
						<input type="radio" value="2" name="role" />
						<label htmlFor="type3">Penjual</label>
					</div>
					<div className="radio-in">
						<input type="radio" name="role" value="3" />
						<label htmlFor="type2">Pembeli</label>
					</div>
				</div>
				<div className="mb-3">
					<label>Password</label>
					<input
						type="password"
						className="form-control"
						placeholder="Enter password"
						onChange={(e) => setPwd(e.target.value)}
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
