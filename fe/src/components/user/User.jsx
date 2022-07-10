// import React from "react";

const User = () => {
	return (
		<section className="cart-items">
			<div className="container d_flex">
				<div className="cart-details">
					<div className="cart-list product">
						<form>
							<h1>Data Diri</h1>
							<div className="mb-3">
								<label>Nama Lengkap</label>
								<input
									// type=""
									className="form-control"
									placeholder="Enter email"
									// onChange={(e) => {
									// 	setNama(e.target.value);
									// }}
								/>
							</div>

							<div className="mb-3">
								<label>Alamat</label>
								<input
									className="form-control"
									placeholder="Enter Address"
									// onChange={(e) => setAlamat(e.target.value)}
								/>
							</div>
							<div className="mb-3">
								<label>Status</label>
								<input
									style={{ color: "#fff" }}
									type="text"
									className="form-control disabled-input"
									placeholder="Penjual"
									disabled
									// onChange={(e) => setPwd(e.target.value)}
								/>
							</div>
							<div className="d-grid">
								<button type="submit" className="btn btn-primary">
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

export default User;
