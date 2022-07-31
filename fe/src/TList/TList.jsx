import { useContext, useState, useEffect } from "react";
import { styled } from "@mui/material/styles";
import Table from "@mui/material/Table";
import TableBody from "@mui/material/TableBody";
import TableCell, { tableCellClasses } from "@mui/material/TableCell";
import TableContainer from "@mui/material/TableContainer";
import TableHead from "@mui/material/TableHead";
import TableRow from "@mui/material/TableRow";
import Paper from "@mui/material/Paper";
import axios from "../api/axios";
import AuthContext from "../context/AuthProvider";

const StyledTableCell = styled(TableCell)(({ theme }) => ({
	[`&.${tableCellClasses.head}`]: {
		backgroundColor: theme.palette.common.black,
		color: theme.palette.common.white,
	},
	[`&.${tableCellClasses.body}`]: {
		fontSize: 14,
	},
}));

const StyledTableRow = styled(TableRow)(({ theme }) => ({
	"&:nth-of-type(odd)": {
		backgroundColor: theme.palette.action.hover,
	},
	// hide last border
	"&:last-child td, &:last-child th": {
		border: 0,
	},
}));

function createData(name, calories, fat, carbs, protein) {
	return { name, calories, fat, carbs, protein };
}

const rows = [
	createData("Frozen yoghurt", 159, 6.0, 24, 4.0),
	createData("Ice cream sandwich", 237, 9.0, 37, 4.3),
	createData("Eclair", 262, 16.0, 24, 6.0),
	createData("Cupcake", 305, 3.7, 67, 4.3),
	createData("Gingerbread", 356, 16.0, 49, 3.9),
];

export default function CustomizedTables() {
	const [data, setData] = useState([]);
	// const [data2, setData2] = useState([]);
	// const sset = new Set();
	// let payload = [];
	// payload[0] = [...payload, { ...payload[0], abc: 1 }];
	// console.log(payload);
	const { auth } = useContext(AuthContext);
	// const token = "1|zhP6ebTyAws8h3knMVkzSE3w2aflFzfsaYXDGSZ1";
	const fetchData = async (e) => {
		try {
			const res = await axios.get("/transaksi", {
				headers: {
					Authorization: `Bearer ${auth.token}`,
				},
			});
			setData(res.data);
			// console.log(res.data);
			// let tmp = 0;
			// res.data.forEach((el) => {
			// 	if (sset.has(el.id_transaksi) === true) {

			// 	} else {
			// 		payload.push({ id: el.id_transaksi, data: [el] });
			// 		sset.add(el.id_transaksi);
			// 		payload.id_transaksi = el.id_transaksi;
			// 	}
			// });
			// sset.forEach((el) => {

			// });
			// console.log(sset);
			// console.log(payload);
		} catch (error) {
			console.log(error);
		}
	};
	useEffect(() => {
		fetchData();
	}, []);

	return (
		<section className="cart-items">
			<div className="container d_flex">
				<TableContainer component={Paper}>
					<Table sx={{ minWidth: 700 }} aria-label="customized table">
						<TableHead>
							<TableRow>
								<StyledTableCell>Nama Barang</StyledTableCell>
								<StyledTableCell>Tanggal</StyledTableCell>
								<StyledTableCell align="right">Id Transaksi</StyledTableCell>
								<StyledTableCell align="right">Id Detail</StyledTableCell>
								<StyledTableCell align="right">
									Nama {auth.role === 3 ? "Penjual" : "Pembeli"}
								</StyledTableCell>
								<StyledTableCell align="right">Jumlah</StyledTableCell>
								<StyledTableCell align="right">Harga</StyledTableCell>
								<StyledTableCell align="right">Total</StyledTableCell>
							</TableRow>
						</TableHead>
						<TableBody>
							{data.map((row) => (
								<StyledTableRow key={row.id}>
									<StyledTableCell component="th" scope="row">
										{row.nama}
									</StyledTableCell>
									<StyledTableCell component="th" scope="row">
										{row.created_at.toLocaleString("id-ID")}
									</StyledTableCell>
									<StyledTableCell align="right">
										{row.id_transaksi}
									</StyledTableCell>
									<StyledTableCell align="right">{row.id}</StyledTableCell>
									<StyledTableCell align="right">{row.name}</StyledTableCell>
									<StyledTableCell align="right">{row.jumlah}</StyledTableCell>
									<StyledTableCell align="right">
										Rp {parseInt(row.harga_satuan).toLocaleString("id-ID")}
									</StyledTableCell>
									<StyledTableCell align="right">
										Rp{" "}
										{parseInt(row.harga_satuan * row.jumlah).toLocaleString(
											"id-ID"
										)}
									</StyledTableCell>
								</StyledTableRow>
							))}
						</TableBody>
					</Table>
				</TableContainer>
			</div>
		</section>
	);
}
