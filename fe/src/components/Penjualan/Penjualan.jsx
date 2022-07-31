import React, { useEffect, useState, useContext } from "react";
import { Line } from "react-chartjs-2";
import {
	Chart as ChartJS,
	CategoryScale,
	LinearScale,
	PointElement,
	LineElement,
	Title,
	Tooltip,
	Legend,
} from "chart.js";
// import { Chart as ChartJS } from "chart.js";
// Edit this page
import axios from "../../api/axios";
import AuthContext from "../../context/AuthProvider";
const Penjualan = () => {
	// ChartJS.register(CategoryScale);
	const [dataset, setDataset] = useState({});
	const { auth } = useContext(AuthContext);
	const token = auth.token;
	const fetchData = async (e) => {
		try {
			const res = await axios.get("/grafik", {
				headers: { Authorization: `Bearer ${token}` },
			});
			setDataset(res.data);
			console.log(dataset);
		} catch (error) {
			console.log(error);
		}
	};
	ChartJS.register(
		CategoryScale,
		LinearScale,
		PointElement,
		LineElement,
		Title,
		Tooltip,
		Legend
	);
	useEffect(() => {
		fetchData();
	}, [auth.token]);

	const data = {
		labels: dataset.month_key,
		datasets: [
			{
				label: "Jumlah Penjualan Per Bulan Tahun Ini",
				data: dataset.month_val,
				fill: true,
				backgroundColor: "rgba(75,192,192,0.2)",
				borderColor: "rgba(75,192,192,1)",
			},
		],
	};
	//  componentDidMount() {
	//     console.log(datasets[0].data);
	//   }
	// useEffect(() => {
	// 	//   first
	// 	const { datasets } = this.refs.chart.chartInstance.data;
	// }, []);

	return (
		<section className="cart-items">
			<div className="container d_flex">
				<div className="product cart-details">
					<Line data={data} />
				</div>
				<div className="product">
					<h2>Barang terlaku</h2>

					{dataset.sorted_barang &&
						dataset.sorted_barang.map((item) => {
							// const productQty = item.harga * item.jumlah;

							return (
								<div className="cart-list product d_flex" key={item.id}>
									<div className="img">
										<img src={item.foto} alt="" />
									</div>
									<div className="cart-details">
										<h3>{item.nama}</h3>
										<h4>
											Rp {parseInt(item.harga_satuan).toLocaleString("id-ID")}
										</h4>
									</div>
								</div>
							);
						})}
				</div>
			</div>
		</section>
	);
};

export default Penjualan;
