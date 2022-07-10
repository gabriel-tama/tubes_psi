import React, { useContext } from "react";
import "./popup.css";
import Login from "../login/Login";
import AuthContext from "../../context/AuthProvider";
const Popup = () => {
	const { trig, setTrig } = useContext(AuthContext);
	return trig ? (
		<div className="popup">
			<div className="popup-inner">
				{/* {props.children} */}
				<Login />
				<button className="close-btn" onClick={() => setTrig(false)}>
					<i className="fa fa-times fa-3x"></i>
				</button>
			</div>
		</div>
	) : (
		""
	);
};

export default Popup;
