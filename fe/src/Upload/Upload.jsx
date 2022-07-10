import React, { useState } from "react";
import axios from "../api/axios";

const Upload = () => {
	const [nama, setNama] = useState("");
	const [deskripsi, setDeskripsi] = useState("");
	const [foto, setFoto] = useState([]);
	const [stok, setStok] = useState(null);
	const [harga, setHarga] = useState(null);
	const handleSubmit = async (e) => {
		e.preventDefault();
		const token = "2|Xh8WKhLAynxWuV1JlTE8aZlTJeOrMbo2rjiXJQnc"; // ganti token user from global context or local storage
		const form = new FormData();
		form.append("nama", nama);
		form.append("deskripsi", deskripsi);
		form.append("foto", foto);
		form.append("stok", stok);
		form.append("harga", harga);

		console.log(foto);
		try {
			const URL = "/barang";
			const response = await axios.post(URL, form, {
				headers: {
					"Content-Type": `multipart/form-data; boundary=${form._boundary}`,
					Authorization: `Bearer ${token}`,
				},
			});
			console.log(response.data);
		} catch (error) {
			console.log(error);
		}
	};
	return (
		<section className="cart-items">
			<div className="container d_flex">
				<div className="cart-details">
					<div className="cart-list product">
						<form onSubmit={handleSubmit} enctype="multipart/form-data">
							<h1>Upload Produk</h1>
							<div className="mb-3">
								<label>Nama Produk</label>
								<input
									// type=""
									className="form-control"
									placeholder="Nama produk"
									onChange={(e) => {
										setNama(e.target.value);
									}}
								/>
							</div>

							<div className="mb-3">
								<label>Deskripsi Singkat</label>
								<input
									type="text"
									className="form-control"
									placeholder="Deskripsi"
									onChange={(e) => setDeskripsi(e.target.value)}
								/>
							</div>
							<div className="mb-3">
								<label>Foto</label>
								<input
									// style={{ color: "#fff" }}
									type="file"
									className="form-control"
									// placeholder="Penjual"
									// disabled
									name="foto"
									onChange={(e) => setFoto(e.target.files[0])}
								/>
							</div>
							<div className="mb-3">
								<label>Stok</label>
								<input
									// style={{ color: "#fff" }}
									type="number"
									className="form-control"
									placeholder="Dalam Angka"
									// disabled
									onChange={(e) => setStok(e.target.value)}
								/>
							</div>
							<div className="mb-3">
								<label>Harga</label>
								<input
									// style={{ color: "#fff" }}
									type="number"
									className="form-control"
									placeholder="Dalam Angka"
									// disabled
									onChange={(e) => setHarga(e.target.value)}
								/>
							</div>
							<div className="d-grid">
								<button
									type="submit"
									className="btn btn-primary"
									// onClick={handleSubmit}
								>
									Submit
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	);
};

export default Upload;
